<?php
include_once 'SQL.php';

class Admin extends SQL {
    public function getOrders($user_id) {
        
        return parent::SelectOrders('basket', 'users', 'product_id', 'id', 'user_id', $user_id);
        
    }
}