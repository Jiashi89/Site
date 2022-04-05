<?php 
  require_once('templates/top.php');
  if($_REQUEST){
      $errors = [];
      if(empty($_REQUEST['email'])) {
        $errors[] = 'Поле email не заполнено';
      }
      if(empty($_REQUEST['login'])) {
        $errors[] = 'Поле login не заполнено';
      }
      if(empty($_REQUEST['password'])) {
        $errors[] = 'Поле password не заполнено';
      }
      if(empty($_REQUEST['passwordrepeat'])) {
        $errors[] = 'Поле passwordrepeat не заполнено';
      }
      $query = "SELECT * FROM users WHERE email='".$_REQUEST['email']."'"; // повторяется ли почта
      $cat = mysqli_query($dbconnect, $query); 
      if(mysqli_num_rows($cat)) {
        $errors[]= "Такая почта уже существует";
      }
      if($errors){
        print_r($errors);
      } else {
        $query = "INSERT INTO users VALUES(NULL,
         '".$_REQUEST['login']."',
         '".$_REQUEST['email']."',
         '".$_REQUEST['password']."',
         now(),
         'unblock',
         now(),
         now()
      )";
      $cat = mysqli_query($dbconnect, $query);
      if(!$cat) {
        exit($query);
      }
      ?>
<script>
  document.location.href='/';
</script>
<?php
      }
  }
?>


            <h2>Добро пожаловать на сайт</h2>
            <div itemprop="articleBody" class="post_content" id="content">
            <form method="post" action="/register.php">
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
</form>
            </div>
    
<?php
  require_once('templates/bottom.php');
?>