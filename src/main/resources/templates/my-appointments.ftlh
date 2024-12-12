<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SALKRAS</title>
    <link rel="stylesheet" href="/static/css/my-appointments.css">
</head>
<body>
<div class="container">
    <h1 class="bg_color" style="color: olive">SALKRAS</h1>
    <hr>
    <h4 class="big_block">Мои записи</h4>
    <hr class="no_hr">
    <div>
        <#list appointments as appointment>
            <a href="/appointment/${appointment.id}">
                <div>
                    <div>
                        <h3>Услуга: ${appointment.service}</h3>
                        <p>Дата: ${appointment.date}</p>
                    </div>
                    <form action="/appointment/delete/${appointment.id}" method="post">
                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                        <input class="ui-button" type="submit" value="Удалить"/>
                    </form>
                </div>
            </a>
        <#else>

            <h1 style="text-align: center">Не найдено</h1>
        </#list>
    </div>
    <hr class="big_block">
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
</div>
</body>
</html>