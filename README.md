# Liquibase

> Базовый `onbuild` образ для использования в качестве основы образов проливки конфигурации в базу посредством liquibase.

# Использование

## Создание собственного образа

### Changelogs.
Сет измений для liquibase требуется скопировать в /liquibase/changelog.

### Бибилиотеки

Бибилотеки поумолчанию присутсвующие в образе:
 - ojdbc8.jar
 - snakeyaml-1.17.jar

Для установки своих бибилиотек их требуется добавить в образ при сборки своего проекта.

Путь до бибилиотек: /liquibase/lib

Путь до liquibase прописан в PATH

Пример **Dockerfile** для сборки вашего образа:

```Dockerfile
FROM docker.ru/onbuild/liquibase:latest
COPY ./changelog /liquibase/changelog
COPY ./lib /liquibase/lib
```
