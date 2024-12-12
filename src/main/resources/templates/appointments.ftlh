<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SALKRAS</title>
    <link rel="stylesheet" href="/static/css/appointments.css">
</head>
<body>
<div class="container">
    <h1 class="bg_color" style="color: olive">SALKRAS</h1>
    <hr>
    <#if user.email??>
        <h3>Здравствуйте, ${user.name}!</h3>
        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <input class="ui-button" type="submit" value="Выйти"/>
        </form>
        <form action="/profile" method="get">
            <input class="ui-button" type="submit" value="Профиль">
        </form>
        <#if user.isAdmin()>
            <form action="/admin" method="get">
                <input class="ui-button" type="submit" value="Панель администратора"/>
            </form>
        </#if>
    <#else>
        <form action="/login" method="post">
            <input class="ui-button" type="submit" value="Войти"/>
        </form>
    </#if>
    <h4>Записи</h4>
    <form action="/" method="get">
        Поиск по услуге: <input type="text" name="service"/><br>
        <input type="submit" value="Найти"/>
    </form>
    <#list appointments as appointment>
        <div>
            <p><b>${appointment.service}</b> ${appointment.date} | <a class="detail" href="/appointment/${appointment.id}">Информация</a></p>
        </div>
        <#if user.isAdmin()>
            <form action="/appointment/delete/${appointment.id}" method="post">
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <input class="ui-button" type="submit" value="Удалить"/>
            </form>
        </#if>
    <#else>
        <h3>Записей нет</h3>
    </#list>
    <#if user.email??>
        <form action="/appointment/create/" method="get">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input class="ui-button" type="submit" value="Создать запись"/>
        </form>
    </#if>
</div>
</body>
</html>