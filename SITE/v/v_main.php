<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title><?=$title?></title>
	<link rel="stylesheet" type="text/css" href="css/style.css"/>

</head>
<body>
    
	<div id="menu">
        <ul>
		<?php
			if ($user['name']) {
				echo '<a class="butt" href="index.php?c=user&act=info">Личный кабинет</a>  <a class="butt" href="index.php?c=page&act=basket">Моя корзина</a>  <a class="butt" href="index.php?c=user&act=logout">Выйти ('. $user['name'] .')</a>';
			} else {
				echo '<a class="butt" href="index.php?c=user&act=login">Войти</a> <a class="butt" href="index.php?c=user&act=reg">Регистрация</a>';
			}
		?>
        </ul>
	</div>
    
    <div class="category-wrap">
        <h3>Навигация</h3>
            <ul>
                <li><a class="butt" href="index.php">Главная</a></li>
                <li><a class="butt" href="index.php?c=page&act=catalog">Каталог</a></li>
                <li><a class="butt" href="">Отзывы</a></li>
                <li><a class="butt" href="">Контакты</a></li>
                <?php
                if ($user['role']) {
					echo '<li><a class="butt" href="index.php?c=admin&act=orders">Управление заказами</a></li>';
				}
                ?>
            </ul>
    </div>
    
	<div id="content">
		<?=$content?>
	</div>
	<div id="footer">
		<?= $date . " г." ?>
	</div>
</body>
</html>