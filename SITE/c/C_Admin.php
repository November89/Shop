<?php

include_once 'm/Orders.php';

class C_Admin extends C_Base {
    
public function action_orders() {     
        $orders_object = new Orders();
        $orders  = $orders_object->getOrders($user_id);
        $this->title .= ' | Админка';
        $this->content = $this->Template('v/v_orders.php', ['orders' => $orders]);
        
        /*if($this->isPost()) {
			 $orderId = $_POST['order'];
			 $orders_object->removeOrder($orderId);
             $this->content = $this->Template('v/v_orders.php', ['orders' => $orders]);
        }*/
    }
}