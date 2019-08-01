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
                    
                    versionText = readFile encoding:'UTF-8', file: 'src/VERSION'
                    versionValue = (versionText =~ /<VERSION>(.*)<\/VERSION>/)[0][1]

                }
                cmd("deployka loadrepo ${connectionString} ${env.StoragePath} -storage-user ${env.Storage_Usr} -storage-pwd ${env.Storage_Psw} -uccode ${uccode} -storage-ver ${versionValue}")
                cmd("deployka dbupdate ${connectionString} -allow-warnings -uccode ${uccode}")
            }
        }

        stage('Синтаксический контроль модулей'){
            steps{
                script{
                    try {
                        cmd("vrunner syntax-check --ibconnection ${connectionString} --groupbymetadata --mode -ThinClient -ThickClientManagedApplication -WebClient")
                        currentBuild.result = 'SUCCESS'
                    }
                    catch (exc) {
                        currentBuild.result = 'FAILURE'
                        step([$class: 'Mailer', notifyEveryUnstableBuild: true, recipients: 's.klochkov@agroeco.ru, s.rudakov@agroeco.ru', sendToIndividuals: true])
                        
                    }     
                }    
            }       
        }

        // stage('Синтаксический контроль модулей'){
        //     steps{
        //         node{

        //     	try {
        //             cmd("vrunner syntax-check --ibconnection ${connectionString} --groupbymetadata --mode -ThinClient -ThickClientManagedApplication -WebClient")
        //             currentBuild.result = 'SUCCESS'
        //         }    
	    //         catch (any) {
		// 		        currentBuild.result = 'FAILURE'
		// 		        throw any //rethrow exception to prevent the build from proceeding
		// 		} 
	    //         finally {
		// 		        step([$class: 'Mailer', notifyEveryUnstableBuild: true, recipients: 's.rudakov@agroeco.ru', sendToIndividuals: true])
		// 	             }


        //         }
        //     }
        // }

            




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
        //bat (script: "chcp 65001\n${command}",  returnStatus: true)
        bat (script: "chcp 65001\n${command}")
    }
}