<?php
$dblocation = 'localhost'; //адрес сервера
$dbname = 'homebase'; //имя базы
$dbuser = 'root'; //имя авторизации базы
$dbpassword = ''; //пароль авторизации базы
$dbconnect = mysqli_connect($dblocation, $dbuser, $dbpassword, $dbname); //подключение БД (важно соблюдать последовательность в скобках)
if(!$dbconnect){ //если функция вернула false
    exit('Error connect'); //пишем, что произошла ошибка соединения
}
 