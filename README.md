# Лабораторная работа № 1 — Web-программирование

Учебный проект по дисциплине Web-программирование.


Установка и настройка Apache Tomcat и Maven. Среда разработки — IntelliJ IDEA, как в предоставленном примере отчёта.

## Состав проекта

- `src/main/webapp/index.jsp` — JSP-страница с фактическим портом и контекстом запроса.
- `src/main/webapp/WEB-INF/web.xml` — дескриптор приложения Servlet 4.0.
- `config/server.xml` — конфигурация Tomcat для порта 8081.
- `config/server-8080.xml` — конфигурация первоначальной проверки на порту 8080.
- `.run/Tomcat_8081.run.xml` — конфигурация запуска из IDEA.
- `.idea/artifacts/lab1_war_exploded.xml` — артефакт WAR Exploded.
- `pom.xml` — описание Maven-проекта WAR.

## Запуск

1. Установить JDK 21 и распаковать Apache Tomcat 9.0.123.
2. Открыть `pom.xml` в IntelliJ IDEA как проект. Указать JDK 21 в Project Structure.
3. В Settings → Build, Execution, Deployment → Application Servers добавить Tomcat с именем `Tomcat 9.0.123` и указать его каталог.
4. В Run → Edit Configurations выбрать `Tomcat 9 — Lab 1 (8081)`, проверить сервер, порт 8081 и Deployment `lab1:war exploded`, контекст `/lab1`.
5. Запустить конфигурацию. Открыть `http://localhost:8081/lab1/`. Для остановки использовать Stop в IDEA.

Для проверки порта 8080 скопировать `config/server-8080.xml` в `TOMCAT_HOME/conf/server.xml`, поместить приложение в `TOMCAT_HOME/webapps/lab1` и запустить `bin/catalina.bat run`. После остановки заменить конфигурацию на `config/server.xml` и повторить проверку на 8081. Одновременно запускается один экземпляр сервера.

Maven: `mvn -v`, сборка: `mvn clean package`. Результат — `target/lab1.war`. При первой сборке Maven нужен доступ к Maven Central.

## Ссылки

- Репозиторий: https://github.com/ssourse/lab1
- Скачать проект: https://github.com/ssourse/lab1/archive/refs/heads/windows-lab1.zip

## Состояние проверки

Проверено выполнение `mvn -v`: Maven 3.9.11, Java 21.0.10. В ограниченной среде автоматизации запуск HTTP-коннектора Tomcat заблокирован (`Permission denied: connect`). Проверка страниц на 8080/8081, запуск из IDEA и отчёт со скриншотами ещё не завершены.


