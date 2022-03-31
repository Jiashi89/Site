<?php 
  require_once('templates/top.php');
  if (isset ($_GET['url'])){ //$_GET - суперглобальный массив. Тут мы определяем переменную $url
    $url = $_GET['url']; //isset отвечает за проверку - есть ли переменная?
  } else {
    $url = 'servises';
  }
  $query = "SELECT * FROM maintexts WHERE url = '$url'"; //строка запроса
  $adr = mysqli_query($dbconnect, $query); // функция выполнения (создания) запроса. adr - adress
  if (!$adr) {
    exit('Error $query');
  }
  $tbl_maintext = mysqli_fetch_array($adr); //обращает $adr в массив
/*  echo '<pre>';
  print_r($tbl_maintext);
  echo '</pre>';     - вывести массив на экран */ 
?>

            <h2><?php echo $tbl_maintext['name'];?></h2>
            <div itemprop="articleBody" class="post_content" id="content">
            <?php echo $tbl_maintext['body'];?>
            </div>
    
<?php
  require_once('templates/bottom.php');
?>