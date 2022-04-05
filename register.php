<?php 
  require_once('templates/top.php');
?>

            <h2>Добро пожаловать на сайт</h2>
            <div itemprop="articleBody" class="post_content" id="content">
            <form name="register">
          <strong>Введите имя:</strong>
          <input
            type="text"
            maxlength="20"
            size="20"
            name="login"
            class="textField"
          />
          <p><strong>Введите вашу почту:</strong>
          <input
            type="text"
            maxlength="20"
            size="20"
            name="email"
            class="textField"
          />
          </p>
          <p>
            <strong>Введите пароль:</strong>
            <input
              type="password"
              maxlenght="20"
              size="20"
              name="password"
              class="passField"
            />
          </p>
          <p>
            <strong>Подтвердите пароль:</strong>
            <input
              type="password"
              maxlenght="20"
              size="20"
              name="passwordrepeat"
              class="passField"
            />
          </p>
          <p><input type="submit" value="Регистрация" /></p>
          <form>
            </div>
    
<?php
  require_once('templates/bottom.php');
?>