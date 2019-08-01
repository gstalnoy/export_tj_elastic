rem Полная инициализация из репозитария, обновление в режиме Предприятия и начальное заполнение ИБ ./build/ibservice

rem Пример запуска 1с-init.cmd storage-user storage-password

chcp 65001

rem call runner --settings vrunner.json

rem set RUNNER_IBNAME=D:\1cv83.db\kanban\build\ibservice

rem call runner init-dev --ibconnection /FD:\1cv83.db\kanban\build\ibservice --storage --storage-name \\dev0\Repo\repository\Kanban --storage-user %1


rem call runner update-dev --src D:\repo_git\kanban\src --ibconnection /FD:\1cv83.db\kanban\test_db_bdd --nocacheuse


call runner init-dev --ibconnection /FD:\1cv83.db\kanban\build\ibservice --src D:\repo_git\kanban\src