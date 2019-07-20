<?php
include_once 'SQL.php';

class Orders extends SQL {

    public $order_id, $product_id, $user_id, $count, $status;

    public function getOrders($user_id) {

    return parent::SelectOrders('orders', 'order_id', 'user_name',  'products', 'user_id');
}

		/*public function addProduct($product_id, $user_id, $count) {

			$object = [
				'product_id' => $product_id,
				'user_id' => $user_id,
				'count' => strip_tags($count)
			];
			
			parent::Insert('basket', $object);
			return 'Товар успешно добавлен в корзину!';
		}

		public function removeProduct($orderId) {
            parent::Remove('basket', $orderId);
    }*/
    
}
?>