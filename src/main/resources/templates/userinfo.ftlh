<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SALKRAS</title>
    <link rel="stylesheet" href="/static/css/userinfo.css">
</head>
<body>
<div class="container">
    <h1 class="bg_color" style="color: olive">SALKRAS</h1>
    <h4>Профиль пользователя</h4>
    <hr class="no_hr">
    <br>
    <div>
        <h2 class="big_block">${user.name}</h2>
        <br>
        Электронная почта: <b>${user.email}</b>
        <br>
        Номер телефона: <b>${user.phoneNumber}</b>
        <br>
        <br>
        <a class="big_block" href="/my/appointments/${user.id}">
            Инциденты пользователя
        </a>
        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button class="btn_registration" type="submit">
                Выйти из аккаунта
            </button>
        </form>
    </div>
</div>
</body>
</html>