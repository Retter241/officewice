-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 14 2018 г., 02:17
-- Версия сервера: 5.7.20
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laraOW`
--

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `short_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deal_id` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`id`, `short_name`, `full_name`, `flag`, `link`, `seo_url`, `created_at`, `updated_at`, `deal_id`) VALUES
(1, 'RU', 'Russia', 'some_flag_link', 'russia', 'russia', NULL, NULL, 1),
(2, 'BY', 'belorussia', 'some_flag', 'belorussia', 'belorussia', NULL, NULL, 1),
(4, 'GR', 'germany', 'some_flag', 'germany', 'germany', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `deals`
--

CREATE TABLE `deals` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_bitrix` int(11) NOT NULL,
  `deal_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deal_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deal_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deal_location_across` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deal_delivery_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deal_loading_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deal_transport_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deal_cargo_params` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deal_special_conditions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `manager_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `country_location_from` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `country_location_to` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `deals`
--

INSERT INTO `deals` (`id`, `id_bitrix`, `deal_status`, `deal_number`, `deal_title`, `deal_location_across`, `deal_delivery_date`, `deal_loading_date`, `deal_transport_type`, `deal_cargo_params`, `deal_special_conditions`, `created_at`, `updated_at`, `country_id`, `manager_id`, `country_location_from`, `country_location_to`) VALUES
(4, 9998, 'opened', '459', 'Из России в Беларусь', 'Через Страну3', '13.09.2018', '16.09.2018', 'Какой то транспорт', 'Параметры любые транспорта', 'Всё остальное', NULL, NULL, 1, 1, 1, 1),
(5, 9998, 'opened', '459', 'Из Беларусь в Россию', 'Через Страну3', '13.09.2018', '16.09.2018', 'Какой то транспорт', 'Параметры любые транспорта', 'Всё остальное', NULL, NULL, 2, 1, 1, 1),
(6, 9998, 'opened', '459', 'Из Германии в Литву', 'Через Страну3', '13.09.2018', '16.09.2018', 'Какой то транспорт', 'Параметры любые транспорта', 'Всё остальное', NULL, NULL, 4, 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `managers`
--

CREATE TABLE `managers` (
  `id` int(10) UNSIGNED NOT NULL,
  `bitrix_id` int(11) NOT NULL,
  `manager_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manager_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manager_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `managers`
--

INSERT INTO `managers` (`id`, `bitrix_id`, `manager_name`, `manager_phone`, `manager_email`, `created_at`, `updated_at`) VALUES
(1, 32, 'Имя номер 1', '+1234567879', 'email.mail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2018_09_05_215738_create_settings_table', 1),
(10, '2018_09_05_230116_change_users_table', 2),
(11, '2018_09_05_233003_change_users_table', 3),
(14, '2018_09_13_160729_create_manager_table', 4),
(22, '2018_09_13_171549_create_countries_table', 5),
(23, '2018_09_13_171637_create_orders_table', 6),
(25, '2018_09_13_171723_create_deals_table', 7),
(26, '2018_09_13_172236_create_managers_table', 7),
(27, '2018_09_13_172351_change_deals_table', 8),
(28, '2018_09_13_172757_change_deals_table2', 9),
(29, '2018_09_13_172917_change_deals_table3', 10),
(30, '2018_09_13_173233_change_orders_table', 11),
(31, '2018_09_13_173538_change_orders_table2', 12),
(32, '2018_09_13_173642_change_deals_table4', 13),
(33, '2018_09_13_195234_change_countries_table2', 14),
(34, '2018_09_13_225932_update_deals_table', 15);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `deal_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deal_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deal_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deal_id` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `login`) VALUES
(1, 'User', 'user@mail.ru', NULL, '$2y$10$WGH9LJAqL4Ma.9nrrb/mreS08IiCQXD8dzfCvv4qx.7T9bmOxmrtS', '8eu6z2Ujj9zjU1FgtaaKppzN5rftK61NjllPepb43jydsSaA5kJyH5MuV32D', '2016-07-17 00:21:51', '2016-07-31 11:01:44', 'user'),
(2, 'test2', 'faggs241@mail.ru', NULL, '$2y$10$UsVLRLHS9UqgYP/Dy2sII.89F3LVZclFxdbBVpxPeOS0OxdHShFeW', 'wAOMy4itf3bwS6GEV5Z9N1VVDYVG8SlzKFRdJw5bMNzSYJa2mnuNsjHWyDyx', '2018-09-05 20:47:34', '2018-09-05 20:47:34', 'test2');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `deals`
--
ALTER TABLE `deals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deals_country_id_foreign` (`country_id`),
  ADD KEY `deals_manager_id_foreign` (`manager_id`),
  ADD KEY `deals_country_full_name_foreign` (`country_location_from`) USING BTREE;

--
-- Индексы таблицы `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_deal_id_foreign` (`deal_id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_login_unique` (`login`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `deals`
--
ALTER TABLE `deals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `managers`
--
ALTER TABLE `managers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `deals`
--
ALTER TABLE `deals`
  ADD CONSTRAINT `deals_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `deals_manager_id_foreign` FOREIGN KEY (`manager_id`) REFERENCES `managers` (`id`);

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
