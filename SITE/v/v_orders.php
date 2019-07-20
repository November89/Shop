
<table border="1px" class='order__table'>
	<tr>
        <th>Номер заказа</th>
		<th>Товары</th>
		<th>Количество (шт.)</th>
		<th>Суммарная стимость покупки($)</th>
		<th>Заказчик</th>
        <th>Действие</th>
	</tr>
    <?php
		$order = 0;
		if (isset($orders)) {
			foreach ($orders as $order) {
				echo "<tr>
                        <td>" . $order["order_id"] . "</td>
                        <td>" . $order["products"] . "</td>
                        <td>" . $order["products"] . "</td>
                        <td>" . $order["price"] . "</td>
                        <td>" . $order["user_name"] . "</td>
                        <td>
                            <form method='post' name='delete_form'>
                                <input type='hidden' name='order' value='" . $order["order_id"] . "'>
                                <input type='submit' name='submit' value='Удалить товар' class='butt'>
                            </form>
                        </td>
                     </tr>";
            }
        }