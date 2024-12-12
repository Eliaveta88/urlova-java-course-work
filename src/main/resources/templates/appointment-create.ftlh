<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="/static/css/appointment-create.css">
</head>
<body>
    <div class="container">
        <h1 class="bg_color" style="color: olive">SALKRAS</h1>
        <hr>
        <h3>Создание записи</h3>
        <form action="/appointment/create" method="post">
            Услуга: <input type="text" name="service"/><br><br>
            Клиент: <input type="text" name="client"/><br><br>
            Номер телефона клиента: <input type="text" name="clientPhone"/><br><br>
            Цена: <input type="text" name="price"/><br><br>
            Локация: <input type="text" name="location"/><br><br>
            Дата оказания услуги: <input type="datetime-local" name="date" step="60"/><br><br>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input class="input_appointment" type="submit" value="Создать">
        </form>
    </div>
</body>
</html>