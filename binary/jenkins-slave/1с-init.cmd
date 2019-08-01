@rem Полная инициализация из репозитария, обновление в режиме Предприятия и начальное заполнение ИБ ./build/ibservice

@rem Пример запуска 1с-init.cmd storage-user storage-password

@chcp 65001

@set RUNNER_IBNAME=/F./build/ibservice

@call runner init-dev --storage --storage-name http:/repo-1c --storage-user %1 --storage-pwd %2

@call runner run --command "ЗапуститьОбновлениеИнформационнойБазы;ЗавершитьРаботуСистемы;" --execute $runnerRoot\build\out\ЗакрытьПредприятие.epf

@call runner vanessa --settings tools/vrunner.first.json

@rem Если убрать комментарий из последней строки, тогда можно выполнять полный прогон bdd-фич
@rem @call runner vanessa --settings tools/vrunner.json