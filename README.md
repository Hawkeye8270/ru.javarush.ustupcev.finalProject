## [REST API](http://localhost:8080/doc)

## Концепция:

- Spring Modulith
    - [Spring Modulith: достигли ли мы зрелости модульности](https://habr.com/ru/post/701984/)
    - [Introducing Spring Modulith](https://spring.io/blog/2022/10/21/introducing-spring-modulith)
    - [Spring Modulith - Reference documentation](https://docs.spring.io/spring-modulith/docs/current-SNAPSHOT/reference/html/)

```
  url: jdbc:postgresql://localhost:5432/jira
  username: jira
  password: JiraRush
```

- Есть 2 общие таблицы, на которых не fk
    - _Reference_ - справочник. Связь делаем по _code_ (по id нельзя, тк id привязано к окружению-конкретной базе)
    - _UserBelong_ - привязка юзеров с типом (owner, lead, ...) к объекту (таска, проект, спринт, ...). FK вручную будем
      проверять

## Аналоги

- https://java-source.net/open-source/issue-trackers

## Тестирование

- https://habr.com/ru/articles/259055/

## Список выполненных задач:
- _2_ - Удалить социальные сети: vk, yandex.
- _3_ - Вынести чувствительную информацию в отдельный проперти файл:  
-- логин  
-- пароль БД  
-- идентификаторы для OAuth регистрации/авторизации  
-- настройки почты.   
Значения этих проперти должны считываться при старте сервера из переменных окружения машины.
- _5_ - Написать тесты для всех публичных методов контроллера ProfileRestController. Хоть методов только 2, но тестовых методов должно быть больше, т.к. нужно проверить success and unsuccess path. _(тестовая БД - PostgreSQL (jira-test))_
- _6_ - Сделать рефакторинг метода com.javarush.jira.bugtracking.attachment.FileUtil#upload чтоб он использовал современный подход для работы с файловой системой.
- _9_ - Написать Dockerfile для основного сервера. 
- _10_ - Написать docker-compose файл для запуска контейнера сервера вместе с БД и nginx. Для nginx используй конфиг-файл config/nginx.conf. При необходимости файл конфига можно редактировать. _(БД заселяется начальными данными автоматически. При повторном запуске внесенные изменения остаются. Nginx на "81" порту т.к. "80" на моей машине уже занят системой)._
- _11_ - Добавить локализацию минимум на двух языках для шаблонов писем (mails) и стартовой страницы index.html. _(переключение языка - "?lang=ru" / ?lang=us)_