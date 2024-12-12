<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SALKRAS</title>
    <link rel="stylesheet" href="/static/css/login.css">
</head>
<body>
<div class="container">
    <h1 class="bg_color" style="color: olive">SALKRAS</h1>
    <h3>Авторизация</h3>
    <form action="/login" method="post">
        Эл. почта: <input  class="" type="email" name="username"><br><br>
        Пароль: <input class="" type="password" name="password"><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Вход"/>
    </form>
    <a class="btn_registration" href="/registration">Зарегистрироваться</a>
</div>
</body>
</html>