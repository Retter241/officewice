-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 23 2018 г., 20:35
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
  `flag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deal_id` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`id`, `short_name`, `full_name`, `flag`, `link`, `seo_url`, `created_at`, `updated_at`, `deal_id`) VALUES
(1, 'RU', 'Россия', 'some_flag_link', 'Russia', 'Russia', NULL, NULL, 1),
(2, 'MY', 'Малайзия', NULL, 'Malaysia', 'Malaysia', NULL, NULL, 1),
(3, 'KR', 'Республика Корея', NULL, 'Korea', 'Korea', NULL, NULL, 1),
(4, 'CN', 'Китай', NULL, 'China', 'China', NULL, NULL, 1),
(5, 'JP', 'Япония', NULL, 'Japan', 'Japan', NULL, NULL, 1),
(6, 'IN', 'Индия', NULL, 'India', 'India', NULL, NULL, 1),
(7, 'TW', 'Тайвань', NULL, 'Taiwan', 'Taiwan', NULL, NULL, 1),
(8, 'HK', 'Гонконг', NULL, 'Hong Kong', 'Hong Kong', NULL, NULL, 1),
(9, 'TH', 'Таиланд', NULL, 'Thailand', 'Thailand', NULL, NULL, 1),
(11, 'VN', 'Вьетнам', NULL, 'Vietnam', 'Vietnam', NULL, NULL, 1),
(12, 'FR', 'Франция', NULL, 'France', 'France', NULL, NULL, 1),
(13, 'IT', 'Италия', NULL, 'Italy', 'Italy', NULL, NULL, 1),
(14, 'AE', 'Объединенные Арабские Эмираты', NULL, 'United Arab Emirates', 'United Arab Emirates', NULL, NULL, 1),
(15, 'SE', 'Швеция', NULL, 'Sweden', 'Sweden', NULL, NULL, 1),
(16, 'KZ', 'Казахстан', NULL, 'Kazakhstan', 'Kazakhstan', NULL, NULL, 1),
(17, 'PT', 'Португалия', NULL, 'Portugal', 'Portugal', NULL, NULL, 1),
(18, 'GR', 'Греция', NULL, 'Greece', 'Greece', NULL, NULL, 1),
(19, 'SA', 'Саудовская Аравия', NULL, 'Saudi Arabia', 'Saudi Arabia', NULL, NULL, 1),
(20, 'RU', 'Российская Федерация', NULL, 'Russian Federation', 'Russian Federation', NULL, NULL, 1),
(21, 'GB', 'Великобритания', NULL, 'United Kingdom', 'United Kingdom', NULL, NULL, 1),
(22, 'DK', 'Дания', NULL, 'Denmark', 'Denmark', NULL, NULL, 1),
(23, 'US', 'США', NULL, 'United States', 'United States', NULL, NULL, 1),
(24, 'CA', 'Канада', NULL, 'Canada', 'Canada', NULL, NULL, 1),
(25, 'MX', 'Мексика', NULL, 'Mexico', 'Mexico', NULL, NULL, 1),
(26, 'BM', 'Бермуды', NULL, 'Bermuda', 'Bermuda', NULL, NULL, 1),
(27, 'PR', 'Пуэрто Рико', NULL, 'Puerto Rico', 'Puerto Rico', NULL, NULL, 1),
(28, 'VI', 'Виргинские Острова США', NULL, 'Virgin Islands, U.S.', 'Virgin Islands, U.S.', NULL, NULL, 1),
(29, 'DE', 'Германия', NULL, 'Germany', 'Germany', NULL, NULL, 1),
(30, 'IR', 'Иран', NULL, 'Iran', 'Iran', NULL, NULL, 1),
(31, 'BO', 'Боливия', NULL, 'Bolivia', 'Bolivia', NULL, NULL, 1),
(32, 'MS', 'Монтсеррат', NULL, 'Montserrat', 'Montserrat', NULL, NULL, 1),
(33, 'NL', 'Нидерланды', NULL, 'Netherlands', 'Netherlands', NULL, NULL, 1),
(34, 'IL', 'Израиль', NULL, 'Israel', 'Israel', NULL, NULL, 1),
(35, 'ES', 'Испания', NULL, 'Spain', 'Spain', NULL, NULL, 1),
(36, 'BS', 'Багамские острова', NULL, 'Bahamas', 'Bahamas', NULL, NULL, 1),
(37, 'VC', 'Сент-Винсент и Гренадины', NULL, 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', NULL, NULL, 1),
(38, 'CL', 'Чили', NULL, 'Chile', 'Chile', NULL, NULL, 1),
(39, 'NC', 'Новая Каледония', NULL, 'New Caledonia', 'New Caledonia', NULL, NULL, 1),
(40, 'AR', 'Аргентина', NULL, 'Argentina', 'Argentina', NULL, NULL, 1),
(41, 'DM', 'Доминика', NULL, 'Dominica', 'Dominica', NULL, NULL, 1),
(42, 'SG', 'Сингапур', NULL, 'Singapore', 'Singapore', NULL, NULL, 1),
(43, 'NP', 'Непал', NULL, 'Nepal', 'Nepal', NULL, NULL, 1),
(44, 'PH', 'Филиппины', NULL, 'Philippines', 'Philippines', NULL, NULL, 1),
(45, 'ID', 'Индонезия', NULL, 'Indonesia', 'Indonesia', NULL, NULL, 1),
(46, 'PK', 'Пакистан', NULL, 'Pakistan', 'Pakistan', NULL, NULL, 1),
(47, 'TK', 'Токелау', NULL, 'Tokelau', 'Tokelau', NULL, NULL, 1),
(48, 'NZ', 'Новая Зеландия', NULL, 'New Zealand', 'New Zealand', NULL, NULL, 1),
(49, 'KH', 'Камбоджа', NULL, 'Cambodia', 'Cambodia', NULL, NULL, 1),
(50, 'MO', 'Макау', NULL, 'Macau', 'Macau', NULL, NULL, 1),
(51, 'PG', 'Папуа Новая Гвинея', NULL, 'Papua New Guinea', 'Papua New Guinea', NULL, NULL, 1),
(52, 'MV', 'Мальдивские острова', NULL, 'Maldives', 'Maldives', NULL, NULL, 1),
(53, 'AF', 'Афганистан', NULL, 'Afghanistan', 'Afghanistan', NULL, NULL, 1),
(54, 'BD', 'Бангладеш', NULL, 'Bangladesh', 'Bangladesh', NULL, NULL, 1),
(55, 'IE', 'Ирландия', NULL, 'Ireland', 'Ireland', NULL, NULL, 1),
(56, 'BE', 'Бельгия', NULL, 'Belgium', 'Belgium', NULL, NULL, 1),
(57, 'BZ', 'Белиз', NULL, 'Belize', 'Belize', NULL, NULL, 1),
(58, 'BR', 'Бразилия', NULL, 'Brazil', 'Brazil', NULL, NULL, 1),
(59, 'CH', 'Швейцария', NULL, 'Switzerland', 'Switzerland', NULL, NULL, 1),
(60, 'ZA', 'Южно-Африканская Республика', NULL, 'South Africa', 'South Africa', NULL, NULL, 1),
(61, 'EG', 'Египет', NULL, 'Egypt', 'Egypt', NULL, NULL, 1),
(62, 'NG', 'Нигерия', NULL, 'Nigeria', 'Nigeria', NULL, NULL, 1),
(63, 'TZ', 'Танзания', NULL, 'Tanzania', 'Tanzania', NULL, NULL, 1),
(64, 'ZM', 'Замбия', NULL, 'Zambia', 'Zambia', NULL, NULL, 1),
(65, 'SN', 'Сенегал', NULL, 'Senegal', 'Senegal', NULL, NULL, 1),
(66, 'GH', 'Гана', NULL, 'Ghana', 'Ghana', NULL, NULL, 1),
(67, 'SD', 'Судан', NULL, 'Sudan', 'Sudan', NULL, NULL, 1),
(68, 'CM', 'Камерун', NULL, 'Cameroon', 'Cameroon', NULL, NULL, 1),
(69, 'MW', 'Малави', NULL, 'Malawi', 'Malawi', NULL, NULL, 1),
(70, 'AO', 'Ангола', NULL, 'Angola', 'Angola', NULL, NULL, 1),
(71, 'KE', 'Кения', NULL, 'Kenya', 'Kenya', NULL, NULL, 1),
(72, 'GA', 'Габон', NULL, 'Gabon', 'Gabon', NULL, NULL, 1),
(73, 'ML', 'Мали', NULL, 'Mali', 'Mali', NULL, NULL, 1),
(74, 'BJ', 'Бенин', NULL, 'Benin', 'Benin', NULL, NULL, 1),
(75, 'MG', 'Мадагаскар', NULL, 'Madagascar', 'Madagascar', NULL, NULL, 1),
(76, 'TD', 'Чад', NULL, 'Chad', 'Chad', NULL, NULL, 1),
(77, 'BW', 'Ботсвана', NULL, 'Botswana', 'Botswana', NULL, NULL, 1),
(78, 'LY', 'Ливия', NULL, 'Libya', 'Libya', NULL, NULL, 1),
(79, 'CV', 'Кабо-Верде', NULL, 'Cape Verde', 'Cape Verde', NULL, NULL, 1),
(80, 'RW', 'Руанда', NULL, 'Rwanda', 'Rwanda', NULL, NULL, 1),
(81, 'MZ', 'Мозамбик', NULL, 'Mozambique', 'Mozambique', NULL, NULL, 1),
(82, 'GM', 'Гамбия', NULL, 'Gambia', 'Gambia', NULL, NULL, 1),
(83, 'LS', 'Лесото', NULL, 'Lesotho', 'Lesotho', NULL, NULL, 1),
(84, 'MU', 'Маврикий', NULL, 'Mauritius', 'Mauritius', NULL, NULL, 1),
(85, 'CG', 'Конго', NULL, 'Congo', 'Congo', NULL, NULL, 1),
(86, 'UG', 'Уганда', NULL, 'Uganda', 'Uganda', NULL, NULL, 1),
(87, 'BF', 'Буркина Фасо', NULL, 'Burkina Faso', 'Burkina Faso', NULL, NULL, 1),
(88, 'SL', 'Сьерра-Леоне', NULL, 'Sierra Leone', 'Sierra Leone', NULL, NULL, 1),
(89, 'SO', 'Сомали', NULL, 'Somalia', 'Somalia', NULL, NULL, 1),
(90, 'ZW', 'Зимбабве', NULL, 'Zimbabwe', 'Zimbabwe', NULL, NULL, 1),
(91, 'CD', 'Демократическая Республика Конго', NULL, 'Democratic Republic Of The Congo', 'Democratic Republic Of The Congo', NULL, NULL, 1),
(92, 'NE', 'Нигер', NULL, 'Niger', 'Niger', NULL, NULL, 1),
(93, 'CF', 'Центрально-Африканская Республика', NULL, 'Central African Republic', 'Central African Republic', NULL, NULL, 1),
(94, 'SZ', 'Свазиленд', NULL, 'Swaziland', 'Swaziland', NULL, NULL, 1),
(95, 'TG', 'Того', NULL, 'Togo', 'Togo', NULL, NULL, 1),
(96, 'GN', 'Гвинея', NULL, 'Guinea', 'Guinea', NULL, NULL, 1),
(97, 'LR', 'Либерия', NULL, 'Liberia', 'Liberia', NULL, NULL, 1),
(98, 'SC', 'Сейшеллы', NULL, 'Seychelles', 'Seychelles', NULL, NULL, 1),
(99, 'MA', 'Марокко', NULL, 'Morocco', 'Morocco', NULL, NULL, 1),
(100, 'DZ', 'Алжир', NULL, 'Algeria', 'Algeria', NULL, NULL, 1),
(101, 'MR', 'Мавритания', NULL, 'Mauritania', 'Mauritania', NULL, NULL, 1),
(102, 'NA', 'Намибия', NULL, 'Namibia', 'Namibia', NULL, NULL, 1),
(103, 'DJ', 'Джибути', NULL, 'Djibouti', 'Djibouti', NULL, NULL, 1),
(105, 'KM', 'Коморские острова', NULL, 'Comoros', 'Comoros', NULL, NULL, 1),
(106, 'RE', 'Реюньон', NULL, 'Reunion', 'Reunion', NULL, NULL, 1),
(107, 'GQ', 'Экваториальная Гвинея', NULL, 'Equatorial Guinea', 'Equatorial Guinea', NULL, NULL, 1),
(108, 'TN', 'Тунис', NULL, 'Tunisia', 'Tunisia', NULL, NULL, 1),
(109, 'TR', 'Турция', NULL, 'Turkey', 'Turkey', NULL, NULL, 1),
(110, 'PL', 'Польша', NULL, 'Poland', 'Poland', NULL, NULL, 1),
(111, 'LV', 'Латвия', NULL, 'Latvia', 'Latvia', NULL, NULL, 1),
(112, 'UA', 'Украина', NULL, 'Ukraine', 'Ukraine', NULL, NULL, 1),
(113, 'BY', 'Беларусь', NULL, 'Belarus', 'Belarus', NULL, NULL, 1),
(114, 'CZ', 'Чехия', NULL, 'Czech Republic', 'Czech Republic', NULL, NULL, 1),
(115, 'PS', 'Палестина', NULL, 'Palestinian Territory', 'Palestinian Territory', NULL, NULL, 1),
(116, 'IS', 'Исландия', NULL, 'Iceland', 'Iceland', NULL, NULL, 1),
(117, 'CY', 'Кипр', NULL, 'Cyprus', 'Cyprus', NULL, NULL, 1),
(118, 'HU', 'Венгрия', NULL, 'Hungary', 'Hungary', NULL, NULL, 1),
(119, 'SK', 'Словакия', NULL, 'Slovakia', 'Slovakia', NULL, NULL, 1),
(120, 'RS', 'Сербия', NULL, 'Serbia', 'Serbia', NULL, NULL, 1),
(121, 'BG', 'Болгария', NULL, 'Bulgaria', 'Bulgaria', NULL, NULL, 1),
(122, 'OM', 'Оман', NULL, 'Oman', 'Oman', NULL, NULL, 1),
(123, 'RO', 'Румыния', NULL, 'Romania', 'Romania', NULL, NULL, 1),
(124, 'GE', 'Грузия', NULL, 'Georgia', 'Georgia', NULL, NULL, 1),
(125, 'NO', 'Норвегия', NULL, 'Norway', 'Norway', NULL, NULL, 1),
(126, 'AM', 'Армения', NULL, 'Armenia', 'Armenia', NULL, NULL, 1),
(127, 'AT', 'Австрия', NULL, 'Austria', 'Austria', NULL, NULL, 1),
(128, 'AL', 'Албания', NULL, 'Albania', 'Albania', NULL, NULL, 1),
(129, 'SI', 'Словения', NULL, 'Slovenia', 'Slovenia', NULL, NULL, 1),
(130, 'PA', 'Панама', NULL, 'Panama', 'Panama', NULL, NULL, 1),
(131, 'BN', 'Бруней', NULL, 'Brunei Darussalam', 'Brunei Darussalam', NULL, NULL, 1),
(132, 'LK', 'Шри-Ланка', NULL, 'Sri Lanka', 'Sri Lanka', NULL, NULL, 1),
(133, 'ME', 'Черногория', NULL, 'Montenegro', 'Montenegro', NULL, NULL, 1),
(134, 'EU', 'Европейский Союз', NULL, 'Europe', 'Europe', NULL, NULL, 1),
(135, 'TJ', 'Таджикистан', NULL, 'Tajikistan', 'Tajikistan', NULL, NULL, 1),
(136, 'IQ', 'Ирак', NULL, 'Iraq', 'Iraq', NULL, NULL, 1),
(137, 'LB', 'Ливан', NULL, 'Lebanon', 'Lebanon', NULL, NULL, 1),
(138, 'MD', 'Молдова', NULL, 'Moldova', 'Moldova', NULL, NULL, 1),
(139, 'FI', 'Финляндия', NULL, 'Finland', 'Finland', NULL, NULL, 1),
(140, 'EE', 'Эстония', NULL, 'Estonia', 'Estonia', NULL, NULL, 1),
(141, 'BA', 'Босния и Герцеговина', NULL, 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', NULL, NULL, 1),
(142, 'KW', 'Кувейт', NULL, 'Kuwait', 'Kuwait', NULL, NULL, 1),
(143, 'AX', 'Аландские острова', NULL, 'Aland Islands', 'Aland Islands', NULL, NULL, 1),
(144, 'LT', 'Литва', NULL, 'Lithuania', 'Lithuania', NULL, NULL, 1),
(145, 'LU', 'Люксембург', NULL, 'Luxembourg', 'Luxembourg', NULL, NULL, 1),
(146, 'AG', 'Антигуа и Барбуда', NULL, 'Antigua and Barbuda', 'Antigua and Barbuda', NULL, NULL, 1),
(147, 'MK', 'Македония', NULL, 'Macedonia', 'Macedonia', NULL, NULL, 1),
(148, 'SM', 'Сан-Марино', NULL, 'San Marino', 'San Marino', NULL, NULL, 1),
(149, 'MT', 'Мальта', NULL, 'Malta', 'Malta', NULL, NULL, 1),
(150, 'FK', 'Фолклендские острова', NULL, 'Falkland Islands', 'Falkland Islands', NULL, NULL, 1),
(151, 'BH', 'Бахрейн', NULL, 'Bahrain', 'Bahrain', NULL, NULL, 1),
(152, 'UZ', 'Узбекистан', NULL, 'Uzbekistan', 'Uzbekistan', NULL, NULL, 1),
(153, 'AZ', 'Азербайджан', NULL, 'Azerbaijan', 'Azerbaijan', NULL, NULL, 1),
(154, 'MC', 'Монако', NULL, 'Monaco', 'Monaco', NULL, NULL, 1),
(155, 'HT', 'Гаити', NULL, 'Haiti', 'Haiti', NULL, NULL, 1),
(156, 'GU', 'Гуам', NULL, 'Guam', 'Guam', NULL, NULL, 1),
(157, 'JM', 'Ямайка', NULL, 'Jamaica', 'Jamaica', NULL, NULL, 1),
(158, 'UM', 'Внешние малые острова США', NULL, 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', NULL, NULL, 1),
(159, 'FM', 'Микронезия', NULL, 'Micronesia', 'Micronesia', NULL, NULL, 1),
(160, 'EC', 'Эквадор', NULL, 'Ecuador', 'Ecuador', NULL, NULL, 1),
(161, 'PE', 'Перу', NULL, 'Peru', 'Peru', NULL, NULL, 1),
(162, 'KY', 'Каймановы острова', NULL, 'Cayman Islands', 'Cayman Islands', NULL, NULL, 1),
(163, 'CO', 'Колумбия', NULL, 'Colombia', 'Colombia', NULL, NULL, 1),
(164, 'HN', 'Гондурас', NULL, 'Honduras', 'Honduras', NULL, NULL, 1),
(165, 'AN', 'Антильские острова', NULL, 'Netherlands Antilles', 'Netherlands Antilles', NULL, NULL, 1),
(166, 'YE', 'Йемен', NULL, 'Yemen', 'Yemen', NULL, NULL, 1),
(167, 'VG', 'Британские Виргинские острова', NULL, 'Virgin Islands, British', 'Virgin Islands, British', NULL, NULL, 1),
(168, 'SY', 'Сирия', NULL, 'Syria', 'Syria', NULL, NULL, 1),
(169, 'NI', 'Никарагуа', NULL, 'Nicaragua', 'Nicaragua', NULL, NULL, 1),
(170, 'DO', 'Доминиканская республика', NULL, 'Dominican Republic', 'Dominican Republic', NULL, NULL, 1),
(171, 'GD', 'Гренада', NULL, 'Grenada', 'Grenada', NULL, NULL, 1),
(172, 'GT', 'Гватемала', NULL, 'Guatemala', 'Guatemala', NULL, NULL, 1),
(173, 'CR', 'Коста-Рика', NULL, 'Costa Rica', 'Costa Rica', NULL, NULL, 1),
(174, 'SV', 'Сальвадор', NULL, 'El Salvador', 'El Salvador', NULL, NULL, 1),
(175, 'VE', 'Венесуэла', NULL, 'Venezuela', 'Venezuela', NULL, NULL, 1),
(176, 'BB', 'Барбадос', NULL, 'Barbados', 'Barbados', NULL, NULL, 1),
(177, 'TT', 'Тринидад и Тобаго', NULL, 'Trinidad and Tobago', 'Trinidad and Tobago', NULL, NULL, 1),
(178, 'BV', 'Буве', NULL, 'Bouvet Island', 'Bouvet Island', NULL, NULL, 1),
(179, 'MH', 'Маршалловы острова', NULL, 'Marshall Islands', 'Marshall Islands', NULL, NULL, 1),
(180, 'CK', 'Острова Кука', NULL, 'Cook Islands', 'Cook Islands', NULL, NULL, 1),
(181, 'GI', 'Гибралтар', NULL, 'Gibraltar', 'Gibraltar', NULL, NULL, 1),
(182, 'PY', 'Парагвай', NULL, 'Paraguay', 'Paraguay', NULL, NULL, 1),
(184, 'WS', 'Самоа', NULL, 'Samoa', 'Samoa', NULL, NULL, 1),
(185, 'KN', 'Сент Китс и Невис', NULL, 'Saint Kitts and Nevis', 'Saint Kitts and Nevis', NULL, NULL, 1),
(186, 'FJ', 'Фиджи', NULL, 'Fiji', 'Fiji', NULL, NULL, 1),
(187, 'UY', 'Уругвай', NULL, 'Uruguay', 'Uruguay', NULL, NULL, 1),
(188, 'MP', 'Северные Марианские острова', NULL, 'Northern Mariana Islands', 'Northern Mariana Islands', NULL, NULL, 1),
(189, 'PW', 'Палау', NULL, 'Palau', 'Palau', NULL, NULL, 1),
(190, 'QA', 'Катар', NULL, 'Qatar', 'Qatar', NULL, NULL, 1),
(191, 'JO', 'Иордания', NULL, 'Jordan', 'Jordan', NULL, NULL, 1),
(192, 'AS', 'Американское Самоа', NULL, 'American Samoa', 'American Samoa', NULL, NULL, 1),
(193, 'TC', 'Туркс и Кейкос', NULL, 'Turks and Caicos Islands', 'Turks and Caicos Islands', NULL, NULL, 1),
(194, 'LC', 'Святая Люсия', NULL, 'Saint Lucia', 'Saint Lucia', NULL, NULL, 1),
(195, 'MN', 'Монголия', NULL, 'Mongolia', 'Mongolia', NULL, NULL, 1),
(196, 'VA', 'Ватикан', NULL, 'Holy See', 'Holy See', NULL, NULL, 1),
(197, 'AW', 'Арулько', NULL, 'Aruba', 'Aruba', NULL, NULL, 1),
(198, 'GY', 'Гайана', NULL, 'Guyana', 'Guyana', NULL, NULL, 1),
(199, 'SR', 'Суринам', NULL, 'Suriname', 'Suriname', NULL, NULL, 1),
(200, 'IM', 'Остров Мэн', NULL, 'Isle of Man', 'Isle of Man', NULL, NULL, 1),
(201, 'VU', 'Вануату', NULL, 'Vanuatu', 'Vanuatu', NULL, NULL, 1),
(202, 'HR', 'Хорватия', NULL, 'Croatia', 'Croatia', NULL, NULL, 1),
(203, 'AI', 'Ангуилья', NULL, 'Anguilla', 'Anguilla', NULL, NULL, 1),
(204, 'PM', 'Сен-Пьер и Микелон', NULL, 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', NULL, NULL, 1),
(205, 'GP', 'Гваделупа', NULL, 'Guadeloupe', 'Guadeloupe', NULL, NULL, 1),
(206, 'MF', 'Сен-Мартен', NULL, 'Saint Martin', 'Saint Martin', NULL, NULL, 1),
(207, 'GG', 'Гернси', NULL, 'Guernsey', 'Guernsey', NULL, NULL, 1),
(208, 'BI', 'Бурунди', NULL, 'Burundi', 'Burundi', NULL, NULL, 1),
(209, 'TM', 'Туркменистан', NULL, 'Turkmenistan', 'Turkmenistan', NULL, NULL, 1),
(210, 'KG', 'Кыргызстан', NULL, 'Kyrgyzstan', 'Kyrgyzstan', NULL, NULL, 1),
(211, 'MM', 'Мьянма', NULL, 'Myanmar', 'Myanmar', NULL, NULL, 1),
(212, 'BT', 'Бутан', NULL, 'Bhutan', 'Bhutan', NULL, NULL, 1),
(213, 'LI', 'Лихтенштейн', NULL, 'Liechtenstein', 'Liechtenstein', NULL, NULL, 1),
(214, 'FO', 'Фарерские острова', NULL, 'Faroe Islands', 'Faroe Islands', NULL, NULL, 1),
(215, 'ET', 'Эфиопия', NULL, 'Ethiopia', 'Ethiopia', NULL, NULL, 1),
(216, 'MQ', 'Мартиника', NULL, 'Martinique', 'Martinique', NULL, NULL, 1),
(217, 'JE', 'Джерси', NULL, 'Jersey', 'Jersey', NULL, NULL, 1),
(218, 'AD', 'Андорра', NULL, 'Andorra', 'Andorra', NULL, NULL, 1),
(219, 'AQ', 'Антарктида', NULL, 'Antarctica', 'Antarctica', NULL, NULL, 1),
(220, 'IO', 'Британская территория в Индийском океане', NULL, 'British Indian Ocean Territory', 'British Indian Ocean Territory', NULL, NULL, 1),
(221, 'GL', 'Гренландия', NULL, 'Greenland', 'Greenland', NULL, NULL, 1),
(222, 'GW', 'Гвинея-Бисау', NULL, 'Guinea-Bissau', 'Guinea-Bissau', NULL, NULL, 1),
(223, 'ER', 'Эритрея', NULL, 'Eritrea', 'Eritrea', NULL, NULL, 1),
(224, 'WF', 'Уоллис и Футуна', NULL, 'Wallis and Futuna', 'Wallis and Futuna', NULL, NULL, 1),
(225, 'PF', 'Французская Полинезия', NULL, 'French Polynesia', 'French Polynesia', NULL, NULL, 1),
(226, 'CU', 'Куба', NULL, 'Cuba', 'Cuba', NULL, NULL, 1),
(227, 'TO', 'Тонга', NULL, 'Tonga', 'Tonga', NULL, NULL, 1),
(228, 'TL', 'Восточный Тимор', NULL, 'Timor-Leste', 'Timor-Leste', NULL, NULL, 1),
(229, 'ST', 'Сан-Томе и Принсипи', NULL, 'Sao Tome and Principe', 'Sao Tome and Principe', NULL, NULL, 1),
(230, 'GF', 'Французская Гвинея', NULL, 'French Guiana', 'French Guiana', NULL, NULL, 1),
(231, 'SB', 'Соломоновы острова', NULL, 'Solomon Islands', 'Solomon Islands', NULL, NULL, 1),
(232, 'TV', 'Тувалу', NULL, 'Tuvalu', 'Tuvalu', NULL, NULL, 1),
(233, 'KI', 'Кирибати', NULL, 'Kiribati', 'Kiribati', NULL, NULL, 1),
(234, 'NU', 'Ниуэ', NULL, 'Niue', 'Niue', NULL, NULL, 1),
(235, 'NF', 'Норфолк', NULL, 'Norfolk Island', 'Norfolk Island', NULL, NULL, 1),
(236, 'NR', 'Науру', NULL, 'Nauru', 'Nauru', NULL, NULL, 1),
(237, 'YT', 'Майотта', NULL, 'Mayotte', 'Mayotte', NULL, NULL, 1),
(238, 'PN', 'Питкэрн', NULL, 'Pitcairn Islands', 'Pitcairn Islands', NULL, NULL, 1),
(239, 'CI', 'Кот-д\'Ивуар', NULL, 'Cote D\'Ivoire', 'Cote D\'Ivoire', NULL, NULL, 1),
(240, 'LA', 'Лаос', NULL, 'Lao', 'Lao', NULL, NULL, 1),
(241, 'KP', 'Корейская Народно-Демократическая Республика', NULL, 'Democratic People\'s Republic of Korea', 'Democratic People\'s Republic of Korea', NULL, NULL, 1),
(242, 'SJ', 'Свальбард и Ян-Майен', NULL, 'Svalbard and Jan Mayen', 'Svalbard and Jan Mayen', NULL, NULL, 1),
(243, 'SH', 'Остров Святой Елены', NULL, 'Saint Helena', 'Saint Helena', NULL, NULL, 1),
(244, 'CC', 'Кокосовые острова', NULL, 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', NULL, NULL, 1),
(245, 'EH', 'Западная Сахара', NULL, 'Western Sahara', 'Western Sahara', NULL, NULL, 1),
(246, 'AU', 'Австралия', NULL, 'Australia', 'Australia', NULL, NULL, 1),
(247, 'SS', 'Южный Судан', NULL, 'South Sudan', 'South Sudan', NULL, NULL, 1);

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
  `deal_location_from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deal_location_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `country_location_from` int(10) NOT NULL DEFAULT '1',
  `country_location_to` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `deals`
--

INSERT INTO `deals` (`id`, `id_bitrix`, `deal_status`, `deal_number`, `deal_title`, `deal_location_from`, `deal_location_to`, `deal_location_across`, `deal_delivery_date`, `deal_loading_date`, `deal_transport_type`, `deal_cargo_params`, `deal_special_conditions`, `created_at`, `updated_at`, `country_id`, `manager_id`, `country_location_from`, `country_location_to`) VALUES
(370, 7420, 'Счет на предопл. заказчику...{ и дальше нам не надо?}', '7420', ' Из Бжег-Дольны Польша - В Минск Беларусь', '110', '113', '', '25.09.18', '21.09.18', '{Требования к автотранспорту:} сборный груз', 'химия не опасная {Обьем (м3) :}6{ масса брутто ( кг ) :}6', ' { Способ погрузки:} размеры мест 1,2х1,2х1,2. 5 ящиков', '2018-09-23 12:18:44', '2018-09-23 12:18:44', 1, 1, 1, 1),
(371, 7419, 'Новая - Да', '7419', ' Из Дзержинск Россия - В Минск Беларусь', '1', '113', '', '24.09.18', '20.09.18', '{Требования к автотранспорту:} ', 'Этиленгликоль {Обьем (м3) :}30{ масса брутто ( кг ) :}30', ' { Способ погрузки:} Нет', '2018-09-23 12:18:44', '2018-09-23 12:18:44', 1, 1, 1, 1),
(372, 7418, 'Новая - Да', '7418', ' Из Гусь-Хрустальный Россия - В Брест Беларусь', '1', '113', '', '23.09.18', '20.09.18', '{Требования к автотранспорту:} ', 'Бутылки на паллетах {Обьем (м3) :}82{ масса брутто ( кг ) :}82', ' { Способ погрузки:} хрупкий груз', '2018-09-23 12:18:44', '2018-09-23 12:18:44', 1, 1, 1, 1),
(373, 7417, 'Новая - Да', '7417', ' Из Гусь-Хрустальный Россия - В Брест Беларусь', '1', '113', '', '23.09.18', '20.09.18', '{Требования к автотранспорту:} ', 'Бутылки на паллетах {Обьем (м3) :}82{ масса брутто ( кг ) :}82', ' { Способ погрузки:} хрупкий груз', '2018-09-23 12:18:44', '2018-09-23 12:18:44', 1, 1, 1, 1),
(374, 7416, 'Новая - Да', '7416', ' Из Правая Хава Россия - В Бобруйск Беларусь', '1', '113', '', '24.09.18', '21.09.18', '{Требования к автотранспорту:} Чистая автоцистерна', 'Растительное масло {Обьем (м3) :}30{ масса брутто ( кг ) :}30', ' { Способ погрузки:} Верхняя загрузка', '2018-09-23 12:18:44', '2018-09-23 12:18:44', 1, 1, 1, 1),
(375, 7415, 'Счет на предопл. заказчику...{ и дальше нам не надо?}', '7415', ' Из Савицкие Беларусь - В Лученец Словакия', '113', '119', '', '24.09.18', '18.09.18', '{Требования к автотранспорту:} ', 'Торф {Обьем (м3) :}82{ масса брутто ( кг ) :}82', ' { Способ погрузки:} боковая', '2018-09-23 12:18:44', '2018-09-23 12:18:44', 1, 1, 1, 1),
(376, 7414, 'Новая - Да', '7414', ' Из Казань Россия - В Борисов Беларусь', '1', '113', '', '24.09.18', '21.09.18', '{Требования к автотранспорту:} ', 'Дрожи в мешках навалом по 40 кг {Обьем (м3) :}82{ масса брутто ( кг ) :}82', ' { Способ погрузки:} задняя погрузка', '2018-09-23 12:18:44', '2018-09-23 12:18:44', 1, 1, 1, 1),
(377, 7409, 'Счет на предопл. заказчику...{ и дальше нам не надо?}', '7409', ' Из Минск Беларусь - В Самара Россия', '113', '1', '', '17.09.18', '14.09.18', '{Требования к автотранспорту:} 10 ремней', 'Профиль ПВХ {Обьем (м3) :}82{ масса брутто ( кг ) :}82', ' { Способ погрузки:} боковая загрузка', '2018-09-23 12:18:44', '2018-09-23 12:18:44', 1, 1, 1, 1),
(378, 7402, 'Счет на предопл. заказчику...{ и дальше нам не надо?}', '7402', ' Из Клайпеда Литва - В Минск Беларусь', '144', '113', '', '23.09.18', '19.09.18', '{Требования к автотранспорту:} перевозка жд', 'обработанные шкуры {Обьем (м3) :}27{ масса брутто ( кг ) :}27', ' { Способ погрузки:} контейнер 20\"', '2018-09-23 12:18:44', '2018-09-23 12:18:44', 1, 1, 1, 1),
(379, 7395, 'Счет на предопл. заказчику...{ и дальше нам не надо?}', '7395', ' Из Казань Россия - В Калинковичи Беларусь', '1', '113', '', '17.09.18', '14.09.18', '{Требования к автотранспорту:} ', 'Дрожи в мешках навалом по 40 кг {Обьем (м3) :}82{ масса брутто ( кг ) :}82', ' { Способ погрузки:} боковая, задняя погрузка', '2018-09-23 12:18:44', '2018-09-23 12:18:44', 1, 1, 1, 1),
(380, 7392, 'Счет на предопл. заказчику...{ и дальше нам не надо?}', '7392', ' Из Могилёв Беларусь - В Самара Россия', '113', '1', '', '20.09.18', '17.09.18', '{Требования к автотранспорту:} нет', 'Профиль ПВХ {Обьем (м3) :}82{ масса брутто ( кг ) :}82', ' { Способ погрузки:} боковая погрузка', '2018-09-23 12:18:44', '2018-09-23 12:18:44', 1, 1, 1, 1),
(381, 7390, 'Счет на предопл. заказчику...{ и дальше нам не надо?}', '7390', ' Из Вышний Волочёк Россия - В Мозырь Беларусь', '1', '113', '', '22.09.18', '21.09.18', '{Требования к автотранспорту:} ', 'Бутылка стеклянная {Обьем (м3) :}82{ масса брутто ( кг ) :}82', ' { Способ погрузки:} боковая, задняя погрузка', '2018-09-23 12:18:44', '2018-09-23 12:18:44', 1, 1, 1, 1),
(382, 7385, 'Счет на предопл. заказчику...{ и дальше нам не надо?}', '7385', ' Из Савицкие Беларусь - В Лученец Словакия', '113', '119', '', '17.09.18', '12.09.18', '{Требования к автотранспорту:} ', 'Торф {Обьем (м3) :}82{ масса брутто ( кг ) :}82', ' { Способ погрузки:} боковая', '2018-09-23 12:18:44', '2018-09-23 12:18:44', 1, 1, 1, 1),
(383, 7383, 'Счет на предопл. заказчику...{ и дальше нам не надо?}', '7383', ' Из Тула Россия - В Минск Беларусь', '1', '113', '', '11.09.18', '10.09.18', '{Требования к автотранспорту:} ', 'Блоки керамические {Обьем (м3) :}82{ масса брутто ( кг ) :}82', ' { Способ погрузки:} Погрузка боковая, выгрузка верхняя', '2018-09-23 12:18:44', '2018-09-23 12:18:44', 1, 1, 1, 1),
(384, 7382, 'Счет на предопл. заказчику...{ и дальше нам не надо?}', '7382', ' Из Савицкие Беларусь - В Лученец Словакия', '113', '119', '', '14.09.18', '11.09.18', '{Требования к автотранспорту:} ', 'Торф {Обьем (м3) :}82{ масса брутто ( кг ) :}82', ' { Способ погрузки:} боковая', '2018-09-23 12:18:44', '2018-09-23 12:18:44', 1, 1, 1, 1),
(385, 7381, 'Счет на предопл. заказчику...{ и дальше нам не надо?}', '7381', ' Из Савицкие Беларусь - В Sviadnov Чехия', '113', '114', '', '17.09.18', '11.09.18', '{Требования к автотранспорту:} ', 'Торф {Обьем (м3) :}82{ масса брутто ( кг ) :}82', ' { Способ погрузки:} боковая', '2018-09-23 12:18:44', '2018-09-23 12:18:44', 1, 1, 1, 1),
(386, 7378, 'Счет на предопл. заказчику...{ и дальше нам не надо?}', '7378', ' Из Казань Россия - В Марьина Горка Беларусь', '1', '113', '', '10.09.18', '07.09.18', '{Требования к автотранспорту:} ', 'Дрожжи в мешках навалом по 40 кг {Обьем (м3) :}82{ масса брутто ( кг ) :}82', ' { Способ погрузки:} боковая, задняя', '2018-09-23 12:18:44', '2018-09-23 12:18:44', 1, 1, 1, 1),
(387, 7368, 'Счет на предопл. заказчику...{ и дальше нам не надо?}', '7368', ' Из Обухово Россия - В Минск Беларусь', '1', '113', '', '06.09.18', '05.09.18', '{Требования к автотранспорту:} ', 'Промышленная химия в мешках и бочках, Мешки, бочки, на паллетах {Обьем (м3) :}82{ масса брутто ( кг ) :}82', ' { Способ погрузки:} Задняя погрузка, АДР 3-9', '2018-09-23 12:18:44', '2018-09-23 12:18:44', 1, 1, 1, 1),
(388, 7365, 'Новая - Да', '7365', ' Из Казань Россия - В Корчицы Беларусь', '1', '113', '', '07.09.18', '04.09.18', '{Требования к автотранспорту:} ', 'Дрожи в мешках навалом по 40 кг {Обьем (м3) :}82{ масса брутто ( кг ) :}82', ' { Способ погрузки:} боковая, задняя', '2018-09-23 12:18:44', '2018-09-23 12:18:44', 1, 1, 1, 1),
(389, 7363, 'Счет на предопл. заказчику...{ и дальше нам не надо?}', '7363', ' Из Клайпеда Литва - В Минск Беларусь', '144', '113', '', '10.09.18', '05.09.18', '{Требования к автотранспорту:} перевозка жд', 'обработанные шкуры {Обьем (м3) :}27{ масса брутто ( кг ) :}27', ' { Способ погрузки:} контейнер 20\"', '2018-09-23 12:18:44', '2018-09-23 12:18:44', 1, 1, 1, 1),
(390, 7360, 'Счет на предопл. заказчику...{ и дальше нам не надо?}', '7360', ' Из Савицкие Беларусь - В Říkov Чехия', '113', '114', '', '06.09.18', '03.09.18', '{Требования к автотранспорту:} ', 'Торф {Обьем (м3) :}90{ масса брутто ( кг ) :}90', ' { Способ погрузки:} боковая', '2018-09-23 12:18:44', '2018-09-23 12:18:44', 1, 1, 1, 1),
(391, 7356, 'Счет на предопл. заказчику...{ и дальше нам не надо?}', '7356', ' Из Могилёв Беларусь - В Михнево Россия', '113', '1', '', '02.09.18', '31.08.18', '{Требования к автотранспорту:} Чистая автоцистерна', 'Глицерин {Обьем (м3) :}30{ масса брутто ( кг ) :}30', ' { Способ погрузки:} Нет', '2018-09-23 12:18:44', '2018-09-23 12:18:44', 1, 1, 1, 1),
(392, 7355, 'Счет на предопл. заказчику...{ и дальше нам не надо?}', '7355', ' Из Казань Россия - В Борисов Беларусь', '1', '113', '', '06.09.18', '03.09.18', '{Требования к автотранспорту:} ', 'Дрожи в мешках навалом по 40 кг {Обьем (м3) :}82{ масса брутто ( кг ) :}82', ' { Способ погрузки:} задняя погрузка', '2018-09-23 12:18:44', '2018-09-23 12:18:44', 1, 1, 1, 1),
(393, 7352, 'Счет на предопл. заказчику...{ и дальше нам не надо?}', '7352', ' Из Казань Россия - В Марьина Горка Беларусь', '1', '113', '', '07.09.18', '03.09.18', '{Требования к автотранспорту:} ', 'Дрожи в мешках навалом по 40 кг {Обьем (м3) :}82{ масса брутто ( кг ) :}82', ' { Способ погрузки:} боковая, задняя', '2018-09-23 12:18:44', '2018-09-23 12:18:44', 1, 1, 1, 1),
(394, 7350, 'Счет на предопл. заказчику...{ и дальше нам не надо?}', '7350', ' Из Гродно Беларусь - В Кралупи-над-Влтавоу Чехия', '113', '114', '', '03.09.18', '31.08.18', '{Требования к автотранспорту:} наличие ремней для крепления груза', 'Пиломатериалы {Обьем (м3) :}82{ масса брутто ( кг ) :}82', ' { Способ погрузки:} Боковая погрузка. Водитель контролирует загрузку и несет ответственность за количество загруженного груза,за его тоннаж!!!', '2018-09-23 12:18:44', '2018-09-23 12:18:44', 1, 1, 1, 1);

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
  ADD KEY `deals_manager_id_foreign` (`manager_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT для таблицы `deals`
--
ALTER TABLE `deals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=395;

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
