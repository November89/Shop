<script>
	window.onload = function() {
		document.getElementById('buy').onclick = function() {
			document.getElementById('buy').style.display = "none";
			document.getElementById('buying_form').style.display = "block";
		};
	}
</script>

<div class="product__full">
	<h1><span><?= $product["title"] ?></span></h1>
    <div class="product__image">
	<img class="img__full" src="/<?= $product["image"] ?>" alt="Изображение" title="<?= $product["title"] ?>" target="_blank">
	<span class="content"><?= $product["content"] ?></span>
    </div>
    <div id='price'>
	<h3 style=color:white>Цена составляет <?= $product["price"] ?> $</h3>
	<?php
		if ($user_id) {
			echo "<button id='buy'>Купить</button>
			<div id='buying_form'>
				<span>Какое количество товара?</span>
				<form method='post' name='buying_form'>
					<input type='number' name='count' required>
					<input type='submit' name='button' value='Добавить в корзину' class='butt'>
				</form>
			</div>";
		}
	?>
    </div>
</div>
<?php if(isset($text)){echo "<script>alert('$text')</script>";}?>