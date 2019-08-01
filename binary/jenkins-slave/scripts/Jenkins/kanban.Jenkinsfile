def connectionString
def uccode
def lockParams

def versionText
def versionValue

pipeline {
    agent {
        label 'gitsync'
    }
    
    options {
        buildDiscarder(logRotator(numToKeepStr: '10'))
    }
    
    environment{
        Storage = credentials('Storage_Kanban_CiBot')
    }
    stages {
        stage('Обновление тестового контура') {
            steps {
                script{
                    connectionString = "\"/S${env.Server1C}\\${env.Database1C}\""
                    uccode = "\"123\""
                    lockParams = "-lockmessage \"test\" -lockuccode ${uccode}"
                    
                    versionText = readFile encoding:'UTF-8', file: 'src/cf/VERSION'
                    versionValue = (versionText =~ /<VERSION>(.*)<\/VERSION>/)[0][1]

                }
                cmd("deployka loadrepo ${connectionString} ${env.StoragePath} -storage-user ${env.Storage_Usr} -storage-pwd ${env.Storage_Psw} -uccode ${uccode} -storage-ver ${versionValue}")
                cmd("deployka dbupdate ${connectionString} -allow-warning -uccode ${uccode}")
            }
        }
        stage('Сборка'){
            steps{
                echo '3'
            }
        }
        
    }
        
    
}

def cmd(command){
    if (isUnix()){
        sh "${command}"
    } else {
        bat "chcp 65001\n${command}"
    }
}