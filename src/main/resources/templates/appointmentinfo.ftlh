<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SALKRAS</title>
    <link rel="stylesheet" href="/static/css/appointmentinfo.css">
</head>
<body>
<div class="container">
    <h1 class="bg_color" style="color: olive">SALKRAS</h1>
    <h3>Подробная информация о записи</h3>
    <b>Услуга: </b>${appointment.service}<br>
    <b>Клиент: </b>${appointment.client}<br>
    <b>Тел. клиента: </b>${appointment.clientPhone}<br>
    <b>Цена: </b>${appointment.price}<br>
    <b>Местоположение: </b>${appointment.location}<br>
    <b>Дата: </b>${appointment.date}<br>
</div>
</body>
</html>