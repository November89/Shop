-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 26 2019 г., 14:27
-- Версия сервера: 5.7.25
-- Версия PHP: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `myshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `basket`
--

CREATE TABLE `basket` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `count` varchar(55) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `basket`
--

INSERT INTO `basket` (`order_id`, `user_id`, `product_id`, `count`, `status`) VALUES
(2, 11, 1, '1', 0),
(3, 11, 21, '1', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `image` varchar(55) NOT NULL,
  `title` varchar(55) NOT NULL,
  `content` varchar(255) NOT NULL,
  `price` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `image`, `title`, `content`, `price`) VALUES
(1, 'img/dachniy.png', 'Букет Дачный', 'всякое разное', '150'),
(17, 'img/fruktoviy.jpg', 'Букет Фруктовый ', 'всякое', '200'),
(18, 'img/pikantniy.jpg', 'Букет Пикантный', 'всякое', '230'),
(19, 'img/osenniy.jpg', 'Букет Осенний', 'всякое', '111'),
(20, 'img/vesenniy.jpg', 'Букет Весенний', 'всякое', '500'),
(21, 'img/zeleniy.png', 'Букет Зеленый', 'всякое', '400'),
(22, 'img/salatoviy.jpg', 'Букет Салатовый', 'всякое', '240');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `login` varchar(55) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `login`, `password`, `role`) VALUES
(7, 'asdasd', 'dvvd', 'c011728eed899c6e4694f44f761f5f8a81dc9bdb52d04dc20036dbd8313ed055', 0),
(8, 'Alex', 'Alex', 'bec7b6bd40fc9229a12c69107b27380a202cb962ac59075b964b07152d234b70', 0),
(9, 'malyutenko', 'malyutenko', '01637e9bb65c1f20238b4029450ef3d7827ccb0eea8a706c4c34a16891f84e7b', 1),
(10, 'катя', 'катя', 'fcadcf5434f8fa31ae576f0f670db913319bd076f0f675ea13af8f4345fcdacf', 0),
(11, 'malyutenko', 'admin', '01637e9bb65c1f20238b4029450ef3d721232f297a57a5a743894a0e4a801fc3', 0),
(12, 'user', 'user', 'ee32c060ac0caa70b04e25091bbc11eeee11cbb19052e40b07aac0ca060c23ee', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`id`) USING BTREE;

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `basket`
--
ALTER TABLE `basket`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `basket`
--
ALTER TABLE `basket`
  ADD CONSTRAINT `basket_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `basket_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
