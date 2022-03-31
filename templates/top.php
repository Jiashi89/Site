<?php require_once('config/config.php');?>
<!DOCTYPE ="html">
<html>
  <head>
    <meta charset='utf-8'>
    <title>Test</title>
    <link
      rel="stylesheet"
      type="text/css"
      href="media/bootstrap/css/bootstrap.min.css"
    />
    <link rel="stylesheet" type="text/css" href="media/css/style.css" />
    <!-- библиотека для кнопок соц. сетей -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />
  </head>
  <body>
    <header id="header">
      <img src="media/img/logo.png" height="200" alt="логотип компании" />
      <div class="logotext">
        <form name="logpas">
          <strong>Логин:</strong>
          <input
            type="text"
            maxlength="20"
            size="20"
            name="login"
            class="textField"
          />
          <p>
            <strong>Пароль:</strong>
            <input
              type="password"
              maxlenght="20"
              size="20"
              name="password"
              class="passField"
            />
          </p>
          <p><input type="submit" value="Войти" /></p>
        </form>
      </div>
    </header>
    <div class="main">
      <div class="menu">
        <a href="/">Главная</a>
        <a href="static.php?url=about">О компании</a>
        <a href="static.php?url=services">Услуги</a>
        <a href="static.php?url=products">Товары</a>
        <a href="static.php?url=jobs">Вакансии</a>
        <a href="/contact.php">Контакты</a>
      </div>
    </div>
    <div class="content">
      <div class="container">
        <div class="row">
          <div class="col-md-2">
            Меню
            <div class="d-grid gap-2">
              <a href="#" class="btn btn-primary">1</a>
              <a href="#" class="btn btn-primary">2</a>
              <a href="#" class="btn btn-primary">3</a>
              <a href="#" class="btn btn-primary">4</a>
              <a href="#" class="btn btn-primary">5</a>
            </div>
          </div>
          <div class="col-md-8">