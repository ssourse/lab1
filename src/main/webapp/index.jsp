<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ru">
<head><meta charset="UTF-8"><title>Лабораторная работа 1</title></head>
<body>
  <h1>Лабораторная работа № 1</h1>
  <p>Установка и настройка среды разработки и исполнения Web-приложения</p>


  <p>Apache Tomcat работает. JSP-страница обработана сервером.</p>
  <p>Порт сервера: <strong><%= request.getLocalPort() %></strong></p>
  <p>Контекст приложения: <strong><%= request.getContextPath() %></strong></p>
  <img src="resources/cat.gif" alt="Кот из примера лабораторной работы">
</body>
</html>

