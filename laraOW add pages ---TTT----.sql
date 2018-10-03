-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 03 2018 г., 19:41
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
  `flag_mini` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deal_id_from` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `deal_id_to` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`id`, `short_name`, `full_name`, `flag`, `flag_mini`, `link`, `seo_url`, `created_at`, `updated_at`, `deal_id_from`, `deal_id_to`) VALUES
(1, 'RU', 'Россия', 'img/flags-normal/RU.PNG', NULL, 'Russia', 'Russia', NULL, '2018-10-01 22:44:10', 1, 1),
(2, 'MY', 'Малайзия', 'img/flags-normal/MY.PNG', NULL, 'Malaysia', 'Malaysia', NULL, '2018-10-01 22:44:11', 2, 2),
(3, 'KR', 'Республика Корея', 'img/flags-normal/KR.PNG', NULL, 'Korea', 'Korea', NULL, '2018-10-01 22:44:11', 3, 3),
(4, 'CN', 'Китай', 'img/flags-normal/CN.PNG', NULL, 'China', 'China', NULL, '2018-10-01 22:44:11', 4, 4),
(5, 'JP', 'Япония', 'img/flags-normal/JP.PNG', NULL, 'Japan', 'Japan', NULL, '2018-10-01 22:44:11', 5, 5),
(6, 'IN', 'Индия', 'img/flags-normal/IN.PNG', NULL, 'India', 'India', NULL, '2018-10-01 22:44:11', 6, 6),
(7, 'TW', 'Тайвань', 'img/flags-normal/TW.PNG', NULL, 'Taiwan', 'Taiwan', NULL, '2018-10-01 22:44:11', 7, 7),
(8, 'HK', 'Гонконг', 'img/flags-normal/HK.PNG', NULL, 'Hong Kong', 'Hong Kong', NULL, '2018-10-01 22:44:11', 8, 8),
(9, 'TH', 'Таиланд', 'img/flags-normal/TH.PNG', NULL, 'Thailand', 'Thailand', NULL, '2018-10-01 22:44:11', 9, 9),
(11, 'VN', 'Вьетнам', 'img/flags-normal/VN.PNG', NULL, 'Vietnam', 'Vietnam', NULL, '2018-10-01 22:44:11', 11, 11),
(12, 'FR', 'Франция', 'img/flags-normal/FR.PNG', NULL, 'France', 'France', NULL, '2018-10-01 22:44:11', 12, 12),
(13, 'IT', 'Италия', 'img/flags-normal/IT.PNG', NULL, 'Italy', 'Italy', NULL, '2018-10-01 22:44:11', 13, 13),
(14, 'AE', 'Объединенные Арабские Эмираты', 'img/flags-normal/AE.PNG', NULL, 'United Arab Emirates', 'United Arab Emirates', NULL, '2018-10-01 22:44:11', 14, 14),
(15, 'SE', 'Швеция', 'img/flags-normal/SE.PNG', NULL, 'Sweden', 'Sweden', NULL, '2018-10-01 22:44:11', 15, 15),
(16, 'KZ', 'Казахстан', 'img/flags-normal/KZ.PNG', NULL, 'Kazakhstan', 'Kazakhstan', NULL, '2018-10-01 22:44:11', 16, 16),
(17, 'PT', 'Португалия', 'img/flags-normal/PT.PNG', NULL, 'Portugal', 'Portugal', NULL, '2018-10-01 22:44:11', 17, 17),
(18, 'GR', 'Греция', 'img/flags-normal/GR.PNG', NULL, 'Greece', 'Greece', NULL, '2018-10-01 22:44:11', 18, 18),
(19, 'SA', 'Саудовская Аравия', 'img/flags-normal/SA.PNG', NULL, 'Saudi Arabia', 'Saudi Arabia', NULL, '2018-10-01 22:44:11', 19, 19),
(20, 'RU', 'Российская Федерация', 'img/flags-normal/RU.PNG', NULL, 'Russian Federation', 'Russian Federation', NULL, '2018-10-01 22:44:11', 20, 20),
(21, 'GB', 'Великобритания', 'img/flags-normal/GB.PNG', NULL, 'United Kingdom', 'United Kingdom', NULL, '2018-10-01 22:44:11', 21, 21),
(22, 'DK', 'Дания', 'img/flags-normal/DK.PNG', NULL, 'Denmark', 'Denmark', NULL, '2018-10-01 22:44:11', 22, 22),
(23, 'US', 'США', 'img/flags-normal/US.PNG', NULL, 'United States', 'United States', NULL, '2018-10-01 22:44:11', 23, 23),
(24, 'CA', 'Канада', 'img/flags-normal/CA.PNG', NULL, 'Canada', 'Canada', NULL, '2018-10-01 22:44:11', 24, 24),
(25, 'MX', 'Мексика', 'img/flags-normal/MX.PNG', NULL, 'Mexico', 'Mexico', NULL, '2018-10-01 22:44:11', 25, 25),
(26, 'BM', 'Бермуды', 'img/flags-normal/BM.PNG', NULL, 'Bermuda', 'Bermuda', NULL, '2018-10-01 22:44:11', 26, 26),
(27, 'PR', 'Пуэрто Рико', 'img/flags-normal/PR.PNG', NULL, 'Puerto Rico', 'Puerto Rico', NULL, '2018-10-01 22:44:11', 27, 27),
(28, 'VI', 'Виргинские Острова США', 'img/flags-normal/VI.PNG', NULL, 'Virgin Islands, U.S.', 'Virgin Islands, U.S.', NULL, '2018-10-01 22:44:11', 28, 28),
(29, 'DE', 'Германия', 'img/flags-normal/DE.PNG', NULL, 'Germany', 'Germany', NULL, '2018-10-01 22:44:11', 29, 29),
(30, 'IR', 'Иран', 'img/flags-normal/IR.PNG', NULL, 'Iran', 'Iran', NULL, '2018-10-01 22:44:11', 30, 30),
(31, 'BO', 'Боливия', 'img/flags-normal/BO.PNG', NULL, 'Bolivia', 'Bolivia', NULL, '2018-10-01 22:44:11', 31, 31),
(32, 'MS', 'Монтсеррат', 'img/flags-normal/MS.PNG', NULL, 'Montserrat', 'Montserrat', NULL, '2018-10-01 22:44:11', 32, 32),
(33, 'NL', 'Нидерланды', 'img/flags-normal/NL.PNG', NULL, 'Netherlands', 'Netherlands', NULL, '2018-10-01 22:44:11', 33, 33),
(34, 'IL', 'Израиль', 'img/flags-normal/IL.PNG', NULL, 'Israel', 'Israel', NULL, '2018-10-01 22:44:11', 34, 34),
(35, 'ES', 'Испания', 'img/flags-normal/ES.PNG', NULL, 'Spain', 'Spain', NULL, '2018-10-01 22:44:11', 35, 35),
(36, 'BS', 'Багамские острова', 'img/flags-normal/BS.PNG', NULL, 'Bahamas', 'Bahamas', NULL, '2018-10-01 22:44:11', 36, 36),
(37, 'VC', 'Сент-Винсент и Гренадины', 'img/flags-normal/VC.PNG', NULL, 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', NULL, '2018-10-01 22:44:11', 37, 37),
(38, 'CL', 'Чили', 'img/flags-normal/CL.PNG', NULL, 'Chile', 'Chile', NULL, '2018-10-01 22:44:11', 38, 38),
(39, 'NC', 'Новая Каледония', 'img/flags-normal/NC.PNG', NULL, 'New Caledonia', 'New Caledonia', NULL, '2018-10-01 22:44:11', 39, 39),
(40, 'AR', 'Аргентина', 'img/flags-normal/AR.PNG', NULL, 'Argentina', 'Argentina', NULL, '2018-10-01 22:44:11', 40, 40),
(41, 'DM', 'Доминика', 'img/flags-normal/DM.PNG', NULL, 'Dominica', 'Dominica', NULL, '2018-10-01 22:44:11', 41, 41),
(42, 'SG', 'Сингапур', 'img/flags-normal/SG.PNG', NULL, 'Singapore', 'Singapore', NULL, '2018-10-01 22:44:11', 42, 42),
(43, 'NP', 'Непал', 'img/flags-normal/NP.PNG', NULL, 'Nepal', 'Nepal', NULL, '2018-10-01 22:44:11', 43, 43),
(44, 'PH', 'Филиппины', 'img/flags-normal/PH.PNG', NULL, 'Philippines', 'Philippines', NULL, '2018-10-01 22:44:11', 44, 44),
(45, 'ID', 'Индонезия', 'img/flags-normal/ID.PNG', NULL, 'Indonesia', 'Indonesia', NULL, '2018-10-01 22:44:11', 45, 45),
(46, 'PK', 'Пакистан', 'img/flags-normal/PK.PNG', NULL, 'Pakistan', 'Pakistan', NULL, '2018-10-01 22:44:11', 46, 46),
(47, 'TK', 'Токелау', 'img/flags-normal/TK.PNG', NULL, 'Tokelau', 'Tokelau', NULL, '2018-10-01 22:44:11', 47, 47),
(48, 'NZ', 'Новая Зеландия', 'img/flags-normal/NZ.PNG', NULL, 'New Zealand', 'New Zealand', NULL, '2018-10-01 22:44:11', 48, 48),
(49, 'KH', 'Камбоджа', 'img/flags-normal/KH.PNG', NULL, 'Cambodia', 'Cambodia', NULL, '2018-10-01 22:44:11', 49, 49),
(50, 'MO', 'Макау', 'img/flags-normal/MO.PNG', NULL, 'Macau', 'Macau', NULL, '2018-10-01 22:44:11', 50, 50),
(51, 'PG', 'Папуа Новая Гвинея', 'img/flags-normal/PG.PNG', NULL, 'Papua New Guinea', 'Papua New Guinea', NULL, '2018-10-01 22:44:11', 51, 51),
(52, 'MV', 'Мальдивские острова', 'img/flags-normal/MV.PNG', NULL, 'Maldives', 'Maldives', NULL, '2018-10-01 22:44:11', 52, 52),
(53, 'AF', 'Афганистан', 'img/flags-normal/AF.PNG', NULL, 'Afghanistan', 'Afghanistan', NULL, '2018-10-01 22:44:11', 53, 53),
(54, 'BD', 'Бангладеш', 'img/flags-normal/BD.PNG', NULL, 'Bangladesh', 'Bangladesh', NULL, '2018-10-01 22:44:11', 54, 54),
(55, 'IE', 'Ирландия', 'img/flags-normal/IE.PNG', NULL, 'Ireland', 'Ireland', NULL, '2018-10-01 22:44:11', 55, 55),
(56, 'BE', 'Бельгия', 'img/flags-normal/BE.PNG', NULL, 'Belgium', 'Belgium', NULL, '2018-10-01 22:44:11', 56, 56),
(57, 'BZ', 'Белиз', 'img/flags-normal/BZ.PNG', NULL, 'Belize', 'Belize', NULL, '2018-10-01 22:44:11', 57, 57),
(58, 'BR', 'Бразилия', 'img/flags-normal/BR.PNG', NULL, 'Brazil', 'Brazil', NULL, '2018-10-01 22:44:11', 58, 58),
(59, 'CH', 'Швейцария', 'img/flags-normal/CH.PNG', NULL, 'Switzerland', 'Switzerland', NULL, '2018-10-01 22:44:11', 59, 59),
(60, 'ZA', 'Южно-Африканская Республика', 'img/flags-normal/ZA.PNG', NULL, 'South Africa', 'South Africa', NULL, '2018-10-01 22:44:11', 60, 60),
(61, 'EG', 'Египет', 'img/flags-normal/EG.PNG', NULL, 'Egypt', 'Egypt', NULL, '2018-10-01 22:44:11', 61, 61),
(62, 'NG', 'Нигерия', 'img/flags-normal/NG.PNG', NULL, 'Nigeria', 'Nigeria', NULL, '2018-10-01 22:44:11', 62, 62),
(63, 'TZ', 'Танзания', 'img/flags-normal/TZ.PNG', NULL, 'Tanzania', 'Tanzania', NULL, '2018-10-01 22:44:11', 63, 63),
(64, 'ZM', 'Замбия', 'img/flags-normal/ZM.PNG', NULL, 'Zambia', 'Zambia', NULL, '2018-10-01 22:44:11', 64, 64),
(65, 'SN', 'Сенегал', 'img/flags-normal/SN.PNG', NULL, 'Senegal', 'Senegal', NULL, '2018-10-01 22:44:11', 65, 65),
(66, 'GH', 'Гана', 'img/flags-normal/GH.PNG', NULL, 'Ghana', 'Ghana', NULL, '2018-10-01 22:44:11', 66, 66),
(67, 'SD', 'Судан', 'img/flags-normal/SD.PNG', NULL, 'Sudan', 'Sudan', NULL, '2018-10-01 22:44:11', 67, 67),
(68, 'CM', 'Камерун', 'img/flags-normal/CM.PNG', NULL, 'Cameroon', 'Cameroon', NULL, '2018-10-01 22:44:11', 68, 68),
(69, 'MW', 'Малави', 'img/flags-normal/MW.PNG', NULL, 'Malawi', 'Malawi', NULL, '2018-10-01 22:44:11', 69, 69),
(70, 'AO', 'Ангола', 'img/flags-normal/AO.PNG', NULL, 'Angola', 'Angola', NULL, '2018-10-01 22:44:11', 70, 70),
(71, 'KE', 'Кения', 'img/flags-normal/KE.PNG', NULL, 'Kenya', 'Kenya', NULL, '2018-10-01 22:44:11', 71, 71),
(72, 'GA', 'Габон', 'img/flags-normal/GA.PNG', NULL, 'Gabon', 'Gabon', NULL, '2018-10-01 22:44:11', 72, 72),
(73, 'ML', 'Мали', 'img/flags-normal/ML.PNG', NULL, 'Mali', 'Mali', NULL, '2018-10-01 22:44:11', 73, 73),
(74, 'BJ', 'Бенин', 'img/flags-normal/BJ.PNG', NULL, 'Benin', 'Benin', NULL, '2018-10-01 22:44:11', 74, 74),
(75, 'MG', 'Мадагаскар', 'img/flags-normal/MG.PNG', NULL, 'Madagascar', 'Madagascar', NULL, '2018-10-01 22:44:11', 75, 75),
(76, 'TD', 'Чад', 'img/flags-normal/TD.PNG', NULL, 'Chad', 'Chad', NULL, '2018-10-01 22:44:11', 76, 76),
(77, 'BW', 'Ботсвана', 'img/flags-normal/BW.PNG', NULL, 'Botswana', 'Botswana', NULL, '2018-10-01 22:44:11', 77, 77),
(78, 'LY', 'Ливия', 'img/flags-normal/LY.PNG', NULL, 'Libya', 'Libya', NULL, '2018-10-01 22:44:11', 78, 78),
(79, 'CV', 'Кабо-Верде', 'img/flags-normal/CV.PNG', NULL, 'Cape Verde', 'Cape Verde', NULL, '2018-10-01 22:44:11', 79, 79),
(80, 'RW', 'Руанда', 'img/flags-normal/RW.PNG', NULL, 'Rwanda', 'Rwanda', NULL, '2018-10-01 22:44:11', 80, 80),
(81, 'MZ', 'Мозамбик', 'img/flags-normal/MZ.PNG', NULL, 'Mozambique', 'Mozambique', NULL, '2018-10-01 22:44:11', 81, 81),
(82, 'GM', 'Гамбия', 'img/flags-normal/GM.PNG', NULL, 'Gambia', 'Gambia', NULL, '2018-10-01 22:44:11', 82, 82),
(83, 'LS', 'Лесото', 'img/flags-normal/LS.PNG', NULL, 'Lesotho', 'Lesotho', NULL, '2018-10-01 22:44:11', 83, 83),
(84, 'MU', 'Маврикий', 'img/flags-normal/MU.PNG', NULL, 'Mauritius', 'Mauritius', NULL, '2018-10-01 22:44:11', 84, 84),
(85, 'CG', 'Конго', 'img/flags-normal/CG.PNG', NULL, 'Congo', 'Congo', NULL, '2018-10-01 22:44:11', 85, 85),
(86, 'UG', 'Уганда', 'img/flags-normal/UG.PNG', NULL, 'Uganda', 'Uganda', NULL, '2018-10-01 22:44:11', 86, 86),
(87, 'BF', 'Буркина Фасо', 'img/flags-normal/BF.PNG', NULL, 'Burkina Faso', 'Burkina Faso', NULL, '2018-10-01 22:44:11', 87, 87),
(88, 'SL', 'Сьерра-Леоне', 'img/flags-normal/SL.PNG', NULL, 'Sierra Leone', 'Sierra Leone', NULL, '2018-10-01 22:44:11', 88, 88),
(89, 'SO', 'Сомали', 'img/flags-normal/SO.PNG', NULL, 'Somalia', 'Somalia', NULL, '2018-10-01 22:44:11', 89, 89),
(90, 'ZW', 'Зимбабве', 'img/flags-normal/ZW.PNG', NULL, 'Zimbabwe', 'Zimbabwe', NULL, '2018-10-01 22:44:11', 90, 90),
(91, 'CD', 'Демократическая Республика Конго', 'img/flags-normal/CD.PNG', NULL, 'Democratic Republic Of The Congo', 'Democratic Republic Of The Congo', NULL, '2018-10-01 22:44:11', 91, 91),
(92, 'NE', 'Нигер', 'img/flags-normal/NE.PNG', NULL, 'Niger', 'Niger', NULL, '2018-10-01 22:44:11', 92, 92),
(93, 'CF', 'Центрально-Африканская Республика', 'img/flags-normal/CF.PNG', NULL, 'Central African Republic', 'Central African Republic', NULL, '2018-10-01 22:44:11', 93, 93),
(94, 'SZ', 'Свазиленд', 'img/flags-normal/SZ.PNG', NULL, 'Swaziland', 'Swaziland', NULL, '2018-10-01 22:44:11', 94, 94),
(95, 'TG', 'Того', 'img/flags-normal/TG.PNG', NULL, 'Togo', 'Togo', NULL, '2018-10-01 22:44:11', 95, 95),
(96, 'GN', 'Гвинея', 'img/flags-normal/GN.PNG', NULL, 'Guinea', 'Guinea', NULL, '2018-10-01 22:44:11', 96, 96),
(97, 'LR', 'Либерия', 'img/flags-normal/LR.PNG', NULL, 'Liberia', 'Liberia', NULL, '2018-10-01 22:44:11', 97, 97),
(98, 'SC', 'Сейшеллы', 'img/flags-normal/SC.PNG', NULL, 'Seychelles', 'Seychelles', NULL, '2018-10-01 22:44:11', 98, 98),
(99, 'MA', 'Марокко', 'img/flags-normal/MA.PNG', NULL, 'Morocco', 'Morocco', NULL, '2018-10-01 22:44:11', 99, 99),
(100, 'DZ', 'Алжир', 'img/flags-normal/DZ.PNG', NULL, 'Algeria', 'Algeria', NULL, '2018-10-01 22:44:11', 100, 100),
(101, 'MR', 'Мавритания', 'img/flags-normal/MR.PNG', NULL, 'Mauritania', 'Mauritania', NULL, '2018-10-01 22:44:11', 101, 101),
(102, 'NA', 'Намибия', 'img/flags-normal/NA.PNG', NULL, 'Namibia', 'Namibia', NULL, '2018-10-01 22:44:11', 102, 102),
(103, 'DJ', 'Джибути', 'img/flags-normal/DJ.PNG', NULL, 'Djibouti', 'Djibouti', NULL, '2018-10-01 22:44:11', 103, 103),
(105, 'KM', 'Коморские острова', 'img/flags-normal/KM.PNG', NULL, 'Comoros', 'Comoros', NULL, '2018-10-01 22:44:11', 105, 105),
(106, 'RE', 'Реюньон', 'img/flags-normal/RE.PNG', NULL, 'Reunion', 'Reunion', NULL, '2018-10-01 22:44:11', 106, 106),
(107, 'GQ', 'Экваториальная Гвинея', 'img/flags-normal/GQ.PNG', NULL, 'Equatorial Guinea', 'Equatorial Guinea', NULL, '2018-10-01 22:44:11', 107, 107),
(108, 'TN', 'Тунис', 'img/flags-normal/TN.PNG', NULL, 'Tunisia', 'Tunisia', NULL, '2018-10-01 22:44:11', 108, 108),
(109, 'TR', 'Турция', 'img/flags-normal/TR.PNG', NULL, 'Turkey', 'Turkey', NULL, '2018-10-01 22:44:11', 109, 109),
(110, 'PL', 'Польша', 'img/flags-normal/PL.PNG', NULL, 'Poland', 'Poland', NULL, '2018-10-01 22:44:11', 110, 110),
(111, 'LV', 'Латвия', 'img/flags-normal/LV.PNG', NULL, 'Latvia', 'Latvia', NULL, '2018-10-01 22:44:11', 111, 111),
(112, 'UA', 'Украина', 'img/flags-normal/UA.PNG', NULL, 'Ukraine', 'Ukraine', NULL, '2018-10-01 22:44:11', 112, 112),
(113, 'BY', 'Беларусь', 'img/flags-normal/BY.PNG', NULL, 'Belarus', 'Belarus', NULL, '2018-10-01 22:44:11', 113, 113),
(114, 'CZ', 'Чехия', 'img/flags-normal/CZ.PNG', NULL, 'Czech Republic', 'Czech Republic', NULL, '2018-10-01 22:44:11', 114, 114),
(115, 'PS', 'Палестина', 'img/flags-normal/PS.PNG', NULL, 'Palestinian Territory', 'Palestinian Territory', NULL, '2018-10-01 22:44:11', 115, 115),
(116, 'IS', 'Исландия', 'img/flags-normal/IS.PNG', NULL, 'Iceland', 'Iceland', NULL, '2018-10-01 22:44:11', 116, 116),
(117, 'CY', 'Кипр', 'img/flags-normal/CY.PNG', NULL, 'Cyprus', 'Cyprus', NULL, '2018-10-01 22:44:11', 117, 117),
(118, 'HU', 'Венгрия', 'img/flags-normal/HU.PNG', NULL, 'Hungary', 'Hungary', NULL, '2018-10-01 22:44:11', 118, 118),
(119, 'SK', 'Словакия', 'img/flags-normal/SK.PNG', NULL, 'Slovakia', 'Slovakia', NULL, '2018-10-01 22:44:11', 119, 119),
(120, 'RS', 'Сербия', 'img/flags-normal/RS.PNG', NULL, 'Serbia', 'Serbia', NULL, '2018-10-01 22:44:11', 120, 120),
(121, 'BG', 'Болгария', 'img/flags-normal/BG.PNG', NULL, 'Bulgaria', 'Bulgaria', NULL, '2018-10-01 22:44:11', 121, 121),
(122, 'OM', 'Оман', 'img/flags-normal/OM.PNG', NULL, 'Oman', 'Oman', NULL, '2018-10-01 22:44:11', 122, 122),
(123, 'RO', 'Румыния', 'img/flags-normal/RO.PNG', NULL, 'Romania', 'Romania', NULL, '2018-10-01 22:44:11', 123, 123),
(124, 'GE', 'Грузия', 'img/flags-normal/GE.PNG', NULL, 'Georgia', 'Georgia', NULL, '2018-10-01 22:44:11', 124, 124),
(125, 'NO', 'Норвегия', 'img/flags-normal/NO.PNG', NULL, 'Norway', 'Norway', NULL, '2018-10-01 22:44:11', 125, 125),
(126, 'AM', 'Армения', 'img/flags-normal/AM.PNG', NULL, 'Armenia', 'Armenia', NULL, '2018-10-01 22:44:11', 126, 126),
(127, 'AT', 'Австрия', 'img/flags-normal/AT.PNG', NULL, 'Austria', 'Austria', NULL, '2018-10-01 22:44:11', 127, 127),
(128, 'AL', 'Албания', 'img/flags-normal/AL.PNG', NULL, 'Albania', 'Albania', NULL, '2018-10-01 22:44:11', 128, 128),
(129, 'SI', 'Словения', 'img/flags-normal/SI.PNG', NULL, 'Slovenia', 'Slovenia', NULL, '2018-10-01 22:44:11', 129, 129),
(130, 'PA', 'Панама', 'img/flags-normal/PA.PNG', NULL, 'Panama', 'Panama', NULL, '2018-10-01 22:44:11', 130, 130),
(131, 'BN', 'Бруней', 'img/flags-normal/BN.PNG', NULL, 'Brunei Darussalam', 'Brunei Darussalam', NULL, '2018-10-01 22:44:11', 131, 131),
(132, 'LK', 'Шри-Ланка', 'img/flags-normal/LK.PNG', NULL, 'Sri Lanka', 'Sri Lanka', NULL, '2018-10-01 22:44:11', 132, 132),
(133, 'ME', 'Черногория', 'img/flags-normal/ME.PNG', NULL, 'Montenegro', 'Montenegro', NULL, '2018-10-01 22:44:11', 133, 133),
(134, 'EU', 'Европейский Союз', 'img/flags-normal/EU.PNG', NULL, 'Europe', 'Europe', NULL, '2018-10-01 22:44:11', 134, 134),
(135, 'TJ', 'Таджикистан', 'img/flags-normal/TJ.PNG', NULL, 'Tajikistan', 'Tajikistan', NULL, '2018-10-01 22:44:11', 135, 135),
(136, 'IQ', 'Ирак', 'img/flags-normal/IQ.PNG', NULL, 'Iraq', 'Iraq', NULL, '2018-10-01 22:44:11', 136, 136),
(137, 'LB', 'Ливан', 'img/flags-normal/LB.PNG', NULL, 'Lebanon', 'Lebanon', NULL, '2018-10-01 22:44:11', 137, 137),
(138, 'MD', 'Молдова', 'img/flags-normal/MD.PNG', NULL, 'Moldova', 'Moldova', NULL, '2018-10-01 22:44:11', 138, 138),
(139, 'FI', 'Финляндия', 'img/flags-normal/FI.PNG', NULL, 'Finland', 'Finland', NULL, '2018-10-01 22:44:11', 139, 139),
(140, 'EE', 'Эстония', 'img/flags-normal/EE.PNG', NULL, 'Estonia', 'Estonia', NULL, '2018-10-01 22:44:11', 140, 140),
(141, 'BA', 'Босния и Герцеговина', 'img/flags-normal/BA.PNG', NULL, 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', NULL, '2018-10-01 22:44:11', 141, 141),
(142, 'KW', 'Кувейт', 'img/flags-normal/KW.PNG', NULL, 'Kuwait', 'Kuwait', NULL, '2018-10-01 22:44:11', 142, 142),
(143, 'AX', 'Аландские острова', 'img/flags-normal/AX.PNG', NULL, 'Aland Islands', 'Aland Islands', NULL, '2018-10-01 22:44:11', 143, 143),
(144, 'LT', 'Литва', 'img/flags-normal/LT.PNG', NULL, 'Lithuania', 'Lithuania', NULL, '2018-10-01 22:44:11', 144, 144),
(145, 'LU', 'Люксембург', 'img/flags-normal/LU.PNG', NULL, 'Luxembourg', 'Luxembourg', NULL, '2018-10-01 22:44:11', 145, 145),
(146, 'AG', 'Антигуа и Барбуда', 'img/flags-normal/AG.PNG', NULL, 'Antigua and Barbuda', 'Antigua and Barbuda', NULL, '2018-10-01 22:44:11', 146, 146),
(147, 'MK', 'Македония', 'img/flags-normal/MK.PNG', NULL, 'Macedonia', 'Macedonia', NULL, '2018-10-01 22:44:11', 147, 147),
(148, 'SM', 'Сан-Марино', 'img/flags-normal/SM.PNG', NULL, 'San Marino', 'San Marino', NULL, '2018-10-01 22:44:11', 148, 148),
(149, 'MT', 'Мальта', 'img/flags-normal/MT.PNG', NULL, 'Malta', 'Malta', NULL, '2018-10-01 22:44:11', 149, 149),
(150, 'FK', 'Фолклендские острова', 'img/flags-normal/FK.PNG', NULL, 'Falkland Islands', 'Falkland Islands', NULL, '2018-10-01 22:44:11', 150, 150),
(151, 'BH', 'Бахрейн', 'img/flags-normal/BH.PNG', NULL, 'Bahrain', 'Bahrain', NULL, '2018-10-01 22:44:11', 151, 151),
(152, 'UZ', 'Узбекистан', 'img/flags-normal/UZ.PNG', NULL, 'Uzbekistan', 'Uzbekistan', NULL, '2018-10-01 22:44:11', 152, 152),
(153, 'AZ', 'Азербайджан', 'img/flags-normal/AZ.PNG', NULL, 'Azerbaijan', 'Azerbaijan', NULL, '2018-10-01 22:44:11', 153, 153),
(154, 'MC', 'Монако', 'img/flags-normal/MC.PNG', NULL, 'Monaco', 'Monaco', NULL, '2018-10-01 22:44:11', 154, 154),
(155, 'HT', 'Гаити', 'img/flags-normal/HT.PNG', NULL, 'Haiti', 'Haiti', NULL, '2018-10-01 22:44:11', 155, 155),
(156, 'GU', 'Гуам', 'img/flags-normal/GU.PNG', NULL, 'Guam', 'Guam', NULL, '2018-10-01 22:44:11', 156, 156),
(157, 'JM', 'Ямайка', 'img/flags-normal/JM.PNG', NULL, 'Jamaica', 'Jamaica', NULL, '2018-10-01 22:44:11', 157, 157),
(158, 'UM', 'Внешние малые острова США', 'img/flags-normal/UM.PNG', NULL, 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', NULL, '2018-10-01 22:44:11', 158, 158),
(159, 'FM', 'Микронезия', 'img/flags-normal/FM.PNG', NULL, 'Micronesia', 'Micronesia', NULL, '2018-10-01 22:44:11', 159, 159),
(160, 'EC', 'Эквадор', 'img/flags-normal/EC.PNG', NULL, 'Ecuador', 'Ecuador', NULL, '2018-10-01 22:44:11', 160, 160),
(161, 'PE', 'Перу', 'img/flags-normal/PE.PNG', NULL, 'Peru', 'Peru', NULL, '2018-10-01 22:44:11', 161, 161),
(162, 'KY', 'Каймановы острова', 'img/flags-normal/KY.PNG', NULL, 'Cayman Islands', 'Cayman Islands', NULL, '2018-10-01 22:44:11', 162, 162),
(163, 'CO', 'Колумбия', 'img/flags-normal/CO.PNG', NULL, 'Colombia', 'Colombia', NULL, '2018-10-01 22:44:11', 163, 163),
(164, 'HN', 'Гондурас', 'img/flags-normal/HN.PNG', NULL, 'Honduras', 'Honduras', NULL, '2018-10-01 22:44:11', 164, 164),
(165, 'AN', 'Антильские острова', 'img/flags-normal/AN.PNG', NULL, 'Netherlands Antilles', 'Netherlands Antilles', NULL, '2018-10-01 22:44:11', 165, 165),
(166, 'YE', 'Йемен', 'img/flags-normal/YE.PNG', NULL, 'Yemen', 'Yemen', NULL, '2018-10-01 22:44:11', 166, 166),
(167, 'VG', 'Британские Виргинские острова', 'img/flags-normal/VG.PNG', NULL, 'Virgin Islands, British', 'Virgin Islands, British', NULL, '2018-10-01 22:44:11', 167, 167),
(168, 'SY', 'Сирия', 'img/flags-normal/SY.PNG', NULL, 'Syria', 'Syria', NULL, '2018-10-01 22:44:11', 168, 168),
(169, 'NI', 'Никарагуа', 'img/flags-normal/NI.PNG', NULL, 'Nicaragua', 'Nicaragua', NULL, '2018-10-01 22:44:11', 169, 169),
(170, 'DO', 'Доминиканская республика', 'img/flags-normal/DO.PNG', NULL, 'Dominican Republic', 'Dominican Republic', NULL, '2018-10-01 22:44:11', 170, 170),
(171, 'GD', 'Гренада', 'img/flags-normal/GD.PNG', NULL, 'Grenada', 'Grenada', NULL, '2018-10-01 22:44:11', 171, 171),
(172, 'GT', 'Гватемала', 'img/flags-normal/GT.PNG', NULL, 'Guatemala', 'Guatemala', NULL, '2018-10-01 22:44:11', 172, 172),
(173, 'CR', 'Коста-Рика', 'img/flags-normal/CR.PNG', NULL, 'Costa Rica', 'Costa Rica', NULL, '2018-10-01 22:44:11', 173, 173),
(174, 'SV', 'Сальвадор', 'img/flags-normal/SV.PNG', NULL, 'El Salvador', 'El Salvador', NULL, '2018-10-01 22:44:11', 174, 174),
(175, 'VE', 'Венесуэла', 'img/flags-normal/VE.PNG', NULL, 'Venezuela', 'Venezuela', NULL, '2018-10-01 22:44:11', 175, 175),
(176, 'BB', 'Барбадос', 'img/flags-normal/BB.PNG', NULL, 'Barbados', 'Barbados', NULL, '2018-10-01 22:44:11', 176, 176),
(177, 'TT', 'Тринидад и Тобаго', 'img/flags-normal/TT.PNG', NULL, 'Trinidad and Tobago', 'Trinidad and Tobago', NULL, '2018-10-01 22:44:11', 177, 177),
(178, 'BV', 'Буве', 'img/flags-normal/BV.PNG', NULL, 'Bouvet Island', 'Bouvet Island', NULL, '2018-10-01 22:44:11', 178, 178),
(179, 'MH', 'Маршалловы острова', 'img/flags-normal/MH.PNG', NULL, 'Marshall Islands', 'Marshall Islands', NULL, '2018-10-01 22:44:11', 179, 179),
(180, 'CK', 'Острова Кука', 'img/flags-normal/CK.PNG', NULL, 'Cook Islands', 'Cook Islands', NULL, '2018-10-01 22:44:11', 180, 180),
(181, 'GI', 'Гибралтар', 'img/flags-normal/GI.PNG', NULL, 'Gibraltar', 'Gibraltar', NULL, '2018-10-01 22:44:11', 181, 181),
(182, 'PY', 'Парагвай', 'img/flags-normal/PY.PNG', NULL, 'Paraguay', 'Paraguay', NULL, '2018-10-01 22:44:11', 182, 182),
(184, 'WS', 'Самоа', 'img/flags-normal/WS.PNG', NULL, 'Samoa', 'Samoa', NULL, '2018-10-01 22:44:11', 184, 184),
(185, 'KN', 'Сент Китс и Невис', 'img/flags-normal/KN.PNG', NULL, 'Saint Kitts and Nevis', 'Saint Kitts and Nevis', NULL, '2018-10-01 22:44:11', 185, 185),
(186, 'FJ', 'Фиджи', 'img/flags-normal/FJ.PNG', NULL, 'Fiji', 'Fiji', NULL, '2018-10-01 22:44:11', 186, 186),
(187, 'UY', 'Уругвай', 'img/flags-normal/UY.PNG', NULL, 'Uruguay', 'Uruguay', NULL, '2018-10-01 22:44:11', 187, 187),
(188, 'MP', 'Северные Марианские острова', 'img/flags-normal/MP.PNG', NULL, 'Northern Mariana Islands', 'Northern Mariana Islands', NULL, '2018-10-01 22:44:11', 188, 188),
(189, 'PW', 'Палау', 'img/flags-normal/PW.PNG', NULL, 'Palau', 'Palau', NULL, '2018-10-01 22:44:11', 189, 189),
(190, 'QA', 'Катар', 'img/flags-normal/QA.PNG', NULL, 'Qatar', 'Qatar', NULL, '2018-10-01 22:44:11', 190, 190),
(191, 'JO', 'Иордания', 'img/flags-normal/JO.PNG', NULL, 'Jordan', 'Jordan', NULL, '2018-10-01 22:44:11', 191, 191),
(192, 'AS', 'Американское Самоа', 'img/flags-normal/AS.PNG', NULL, 'American Samoa', 'American Samoa', NULL, '2018-10-01 22:44:11', 192, 192),
(193, 'TC', 'Туркс и Кейкос', 'img/flags-normal/TC.PNG', NULL, 'Turks and Caicos Islands', 'Turks and Caicos Islands', NULL, '2018-10-01 22:44:11', 193, 193),
(194, 'LC', 'Святая Люсия', 'img/flags-normal/LC.PNG', NULL, 'Saint Lucia', 'Saint Lucia', NULL, '2018-10-01 22:44:11', 194, 194),
(195, 'MN', 'Монголия', 'img/flags-normal/MN.PNG', NULL, 'Mongolia', 'Mongolia', NULL, '2018-10-01 22:44:11', 195, 195),
(196, 'VA', 'Ватикан', 'img/flags-normal/VA.PNG', NULL, 'Holy See', 'Holy See', NULL, '2018-10-01 22:44:11', 196, 196),
(197, 'AW', 'Арулько', 'img/flags-normal/AW.PNG', NULL, 'Aruba', 'Aruba', NULL, '2018-10-01 22:44:11', 197, 197),
(198, 'GY', 'Гайана', 'img/flags-normal/GY.PNG', NULL, 'Guyana', 'Guyana', NULL, '2018-10-01 22:44:11', 198, 198),
(199, 'SR', 'Суринам', 'img/flags-normal/SR.PNG', NULL, 'Suriname', 'Suriname', NULL, '2018-10-01 22:44:11', 199, 199),
(200, 'IM', 'Остров Мэн', 'img/flags-normal/IM.PNG', NULL, 'Isle of Man', 'Isle of Man', NULL, '2018-10-01 22:44:11', 200, 200),
(201, 'VU', 'Вануату', 'img/flags-normal/VU.PNG', NULL, 'Vanuatu', 'Vanuatu', NULL, '2018-10-01 22:44:11', 201, 201),
(202, 'HR', 'Хорватия', 'img/flags-normal/HR.PNG', NULL, 'Croatia', 'Croatia', NULL, '2018-10-01 22:44:11', 202, 202),
(203, 'AI', 'Ангуилья', 'img/flags-normal/AI.PNG', NULL, 'Anguilla', 'Anguilla', NULL, '2018-10-01 22:44:11', 203, 203),
(204, 'PM', 'Сен-Пьер и Микелон', 'img/flags-normal/PM.PNG', NULL, 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', NULL, '2018-10-01 22:44:11', 204, 204),
(205, 'GP', 'Гваделупа', 'img/flags-normal/GP.PNG', NULL, 'Guadeloupe', 'Guadeloupe', NULL, '2018-10-01 22:44:11', 205, 205),
(206, 'MF', 'Сен-Мартен', 'img/flags-normal/MF.PNG', NULL, 'Saint Martin', 'Saint Martin', NULL, '2018-10-01 22:44:11', 206, 206),
(207, 'GG', 'Гернси', 'img/flags-normal/GG.PNG', NULL, 'Guernsey', 'Guernsey', NULL, '2018-10-01 22:44:11', 207, 207),
(208, 'BI', 'Бурунди', 'img/flags-normal/BI.PNG', NULL, 'Burundi', 'Burundi', NULL, '2018-10-01 22:44:11', 208, 208),
(209, 'TM', 'Туркменистан', 'img/flags-normal/TM.PNG', NULL, 'Turkmenistan', 'Turkmenistan', NULL, '2018-10-01 22:44:11', 209, 209),
(210, 'KG', 'Кыргызстан', 'img/flags-normal/KG.PNG', NULL, 'Kyrgyzstan', 'Kyrgyzstan', NULL, '2018-10-01 22:44:11', 210, 210),
(211, 'MM', 'Мьянма', 'img/flags-normal/MM.PNG', NULL, 'Myanmar', 'Myanmar', NULL, '2018-10-01 22:44:11', 211, 211),
(212, 'BT', 'Бутан', 'img/flags-normal/BT.PNG', NULL, 'Bhutan', 'Bhutan', NULL, '2018-10-01 22:44:11', 212, 212),
(213, 'LI', 'Лихтенштейн', 'img/flags-normal/LI.PNG', NULL, 'Liechtenstein', 'Liechtenstein', NULL, '2018-10-01 22:44:11', 213, 213),
(214, 'FO', 'Фарерские острова', 'img/flags-normal/FO.PNG', NULL, 'Faroe Islands', 'Faroe Islands', NULL, '2018-10-01 22:44:11', 214, 214),
(215, 'ET', 'Эфиопия', 'img/flags-normal/ET.PNG', NULL, 'Ethiopia', 'Ethiopia', NULL, '2018-10-01 22:44:11', 215, 215),
(216, 'MQ', 'Мартиника', 'img/flags-normal/MQ.PNG', NULL, 'Martinique', 'Martinique', NULL, '2018-10-01 22:44:11', 216, 216),
(217, 'JE', 'Джерси', 'img/flags-normal/JE.PNG', NULL, 'Jersey', 'Jersey', NULL, '2018-10-01 22:44:11', 217, 217),
(218, 'AD', 'Андорра', 'img/flags-normal/AD.PNG', NULL, 'Andorra', 'Andorra', NULL, '2018-10-01 22:44:11', 218, 218),
(219, 'AQ', 'Антарктида', 'img/flags-normal/AQ.PNG', NULL, 'Antarctica', 'Antarctica', NULL, '2018-10-01 22:44:11', 219, 219),
(220, 'IO', 'Британская территория в Индийском океане', 'img/flags-normal/IO.PNG', NULL, 'British Indian Ocean Territory', 'British Indian Ocean Territory', NULL, '2018-10-01 22:44:11', 220, 220),
(221, 'GL', 'Гренландия', 'img/flags-normal/GL.PNG', NULL, 'Greenland', 'Greenland', NULL, '2018-10-01 22:44:11', 221, 221),
(222, 'GW', 'Гвинея-Бисау', 'img/flags-normal/GW.PNG', NULL, 'Guinea-Bissau', 'Guinea-Bissau', NULL, '2018-10-01 22:44:11', 222, 222),
(223, 'ER', 'Эритрея', 'img/flags-normal/ER.PNG', NULL, 'Eritrea', 'Eritrea', NULL, '2018-10-01 22:44:11', 223, 223),
(224, 'WF', 'Уоллис и Футуна', 'img/flags-normal/WF.PNG', NULL, 'Wallis and Futuna', 'Wallis and Futuna', NULL, '2018-10-01 22:44:11', 224, 224),
(225, 'PF', 'Французская Полинезия', 'img/flags-normal/PF.PNG', NULL, 'French Polynesia', 'French Polynesia', NULL, '2018-10-01 22:44:11', 225, 225),
(226, 'CU', 'Куба', 'img/flags-normal/CU.PNG', NULL, 'Cuba', 'Cuba', NULL, '2018-10-01 22:44:11', 226, 226),
(227, 'TO', 'Тонга', 'img/flags-normal/TO.PNG', NULL, 'Tonga', 'Tonga', NULL, '2018-10-01 22:44:11', 227, 227),
(228, 'TL', 'Восточный Тимор', 'img/flags-normal/TL.PNG', NULL, 'Timor-Leste', 'Timor-Leste', NULL, '2018-10-01 22:44:11', 228, 228),
(229, 'ST', 'Сан-Томе и Принсипи', 'img/flags-normal/ST.PNG', NULL, 'Sao Tome and Principe', 'Sao Tome and Principe', NULL, '2018-10-01 22:44:11', 229, 229),
(230, 'GF', 'Французская Гвинея', 'img/flags-normal/GF.PNG', NULL, 'French Guiana', 'French Guiana', NULL, '2018-10-01 22:44:11', 230, 230),
(231, 'SB', 'Соломоновы острова', 'img/flags-normal/SB.PNG', NULL, 'Solomon Islands', 'Solomon Islands', NULL, '2018-10-01 22:44:11', 231, 231),
(232, 'TV', 'Тувалу', 'img/flags-normal/TV.PNG', NULL, 'Tuvalu', 'Tuvalu', NULL, '2018-10-01 22:44:11', 232, 232),
(233, 'KI', 'Кирибати', 'img/flags-normal/KI.PNG', NULL, 'Kiribati', 'Kiribati', NULL, '2018-10-01 22:44:11', 233, 233),
(234, 'NU', 'Ниуэ', 'img/flags-normal/NU.PNG', NULL, 'Niue', 'Niue', NULL, '2018-10-01 22:44:11', 234, 234),
(235, 'NF', 'Норфолк', 'img/flags-normal/NF.PNG', NULL, 'Norfolk Island', 'Norfolk Island', NULL, '2018-10-01 22:44:11', 235, 235),
(236, 'NR', 'Науру', 'img/flags-normal/NR.PNG', NULL, 'Nauru', 'Nauru', NULL, '2018-10-01 22:44:11', 236, 236),
(237, 'YT', 'Майотта', 'img/flags-normal/YT.PNG', NULL, 'Mayotte', 'Mayotte', NULL, '2018-10-01 22:44:11', 237, 237),
(238, 'PN', 'Питкэрн', 'img/flags-normal/PN.PNG', NULL, 'Pitcairn Islands', 'Pitcairn Islands', NULL, '2018-10-01 22:44:11', 238, 238),
(239, 'CI', 'Кот-д\'Ивуар', 'img/flags-normal/CI.PNG', NULL, 'Cote D\'Ivoire', 'Cote D\'Ivoire', NULL, '2018-10-01 22:44:11', 239, 239),
(240, 'LA', 'Лаос', 'img/flags-normal/LA.PNG', NULL, 'Lao', 'Lao', NULL, '2018-10-01 22:44:11', 240, 240),
(241, 'KP', 'Корейская Народно-Демократическая Республика', 'img/flags-normal/KP.PNG', NULL, 'Democratic People\'s Republic of Korea', 'Democratic People\'s Republic of Korea', NULL, '2018-10-01 22:44:11', 241, 241),
(242, 'SJ', 'Свальбард и Ян-Майен', 'img/flags-normal/SJ.PNG', NULL, 'Svalbard and Jan Mayen', 'Svalbard and Jan Mayen', NULL, '2018-10-01 22:44:11', 242, 242),
(243, 'SH', 'Остров Святой Елены', 'img/flags-normal/SH.PNG', NULL, 'Saint Helena', 'Saint Helena', NULL, '2018-10-01 22:44:11', 243, 243),
(244, 'CC', 'Кокосовые острова', 'img/flags-normal/CC.PNG', NULL, 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', NULL, '2018-10-01 22:44:11', 244, 244),
(245, 'EH', 'Западная Сахара', 'img/flags-normal/EH.PNG', NULL, 'Western Sahara', 'Western Sahara', NULL, '2018-10-01 22:44:11', 245, 245),
(246, 'AU', 'Австралия', 'img/flags-normal/AU.PNG', NULL, 'Australia', 'Australia', NULL, '2018-10-01 22:44:11', 246, 246),
(247, 'SS', 'Южный Судан', 'img/flags-normal/SS.PNG', NULL, 'South Sudan', 'South Sudan', NULL, '2018-10-01 22:44:11', 247, 247);

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
  `deal_location_across` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deal_delivery_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deal_loading_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deal_transport_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deal_cargo_params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deal_special_conditions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country_id_from` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `country_id_to` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `manager_id` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `deals`
--

INSERT INTO `deals` (`id`, `id_bitrix`, `deal_status`, `deal_number`, `deal_title`, `deal_location_from`, `deal_location_to`, `deal_location_across`, `deal_delivery_date`, `deal_loading_date`, `deal_transport_type`, `deal_cargo_params`, `deal_special_conditions`, `created_at`, `updated_at`, `country_id_from`, `country_id_to`, `manager_id`) VALUES
(81, 7442, 'Новая - Да', '7442', ' Из Камышин Россия - В Пуховичи Беларусь', '1', '113', '', '19.10.18', '15.10.18', 'Способ крепления 3 стяжных ремня. Закрепление груза осуществляется под руководством работника завода', 'бутылка/82/82', 'габарит 1 паллеты 1200*1000*1900 мм\r\n22 паллеты', '2018-10-03 03:18:51', '2018-10-03 03:18:51', 113, 0, 1),
(82, 7438, 'Новая - Да', '7438', ' Из Гомель Беларусь - В Зеленодольск Россия', '113', '1', '', '05.10.18', '01.10.18', NULL, 'Стекло в ящиках/82/82', 'Верхняя погрузка', '2018-10-03 03:18:52', '2018-10-03 03:18:52', 1, 0, 1),
(83, 7437, 'Новая - Да', '7437', ' Из Волгоград Россия - В Колодищи Беларусь', '1', '113', '', '08.10.18', '05.10.18', 'Чистая автоцистерна', 'Хлорпарафин ХП470/30/30', 'Наличие ДОПОГ ', '2018-10-03 03:18:52', '2018-10-03 03:18:52', 1, 0, 1),
(84, 7436, 'Новая - Да', '7436', ' Из Киев Украина - В Вильнюс Литва', '112', '144', '', '03.10.18', '01.10.18', NULL, 'пиво/82/82', 'режим не ниже +2', '2018-10-03 03:18:52', '2018-10-03 03:18:52', 1, 0, 1),
(85, 7434, 'Новая - Да', '7434', ' Из Минск Беларусь - В Софьино Россия', '113', '1', '', '28.09.18', '28.09.18', NULL, 'Пиво/82/82', 'Задняя погрузка', '2018-10-03 03:18:52', '2018-10-03 03:18:52', 1, 0, 1),
(86, 7433, 'Новая - Да', '7433', ' Из Глубокое Беларусь - В Харьков Украина', '113', '112', '', '08.10.18', '03.10.18', NULL, 'консервы молочные/82/82', 'без терморежима', '2018-10-03 03:18:52', '2018-10-03 03:18:52', 1, 0, 1),
(87, 7432, 'Новая - Да', '7432', ' Из Кстово Россия - В Минск Беларусь', '1', '113', '', '01.10.18', '28.09.18', NULL, 'Смола ПВХ/82/82', 'Погрузка задняя, Пустая машина не должна весить более 17т!!! ', '2018-10-03 03:18:52', '2018-10-03 03:18:52', 1, 0, 1),
(88, 7429, 'Новая - Да', '7429', ' Из Выкса Россия - В Минск Беларусь', '1', '113', '', '28.09.18', '27.09.18', NULL, 'металл/0/0', 'металл', '2018-10-03 03:18:52', '2018-10-03 03:18:52', 1, 0, 1),
(89, 7427, 'Новая - Да', '7427', ' Из Липецк Россия - В Молодечно Беларусь', '1', '113', '', '05.09.18', '01.10.18', NULL, 'Металопрокат в рулонах/82/82', 'Верхняя погрузка', '2018-10-03 03:18:52', '2018-10-03 03:18:52', 1, 0, 1),
(90, 7426, 'Новая - Да', '7426', ' Из Тула Россия - В Минск Беларусь', '1', '113', '', '28.09.18', '26.09.18', NULL, 'Блоки керамические/82/82', 'Погрузка боковая, выгрузка верхняя', '2018-10-03 03:18:52', '2018-10-03 03:18:52', 1, 0, 1),
(91, 7425, 'Новая - Да', '7425', ' Из Екатеринбург Россия - В Минск Беларусь', '1', '113', '', '27.09.18', '25.09.18', 'Чистая автоцистерна, гумированная или стеклопластиковая цистерна для агрессивных жидкостей', 'Алюминий хлорид диоксид АДР 8,3 ООН 3264/30000/30000', 'верхняя погрузка', '2018-10-03 03:18:52', '2018-10-03 03:18:52', 1, 0, 1),
(92, 7424, 'Новая - Да', '7424', ' Из Дзержинск Россия - В Новополоцк Беларусь', '1', '113', '', '27.09.18', '25.09.18', 'Чистая автоцистерна с подогревом', 'Присадка, АДР 9 ООН - 3082/19.64/19.64', 'Чистая автоцистерна', '2018-10-03 03:18:52', '2018-10-03 03:18:52', 1, 0, 1),
(93, 7423, 'Новая - Да', '7423', ' Из Казань Россия - В Минск Беларусь', '1', '113', '', '27.09.18', '25.09.18', NULL, 'Моноэтиленгликоль плотность 1,12/19.64/19.64', 'Чистая автоцистерна', '2018-10-03 03:18:52', '2018-10-03 03:18:52', 1, 0, 1),
(94, 7422, 'Новая - Да', '7422', ' Из Казань Россия - В Минск Беларусь', '1', '113', '', '27.09.18', '25.09.18', NULL, 'Моноэтиленгликоль плотность 1,12/19.64/19.64', 'Чистая автоцистерна', '2018-10-03 03:18:52', '2018-10-03 03:18:52', 1, 0, 1),
(95, 7418, 'Новая - Да', '7418', ' Из Гусь-Хрустальный Россия - В Брест Беларусь', '1', '113', '', '23.09.18', '20.09.18', NULL, 'Бутылки на паллетах/82/82', 'хрупкий груз', '2018-10-03 03:18:52', '2018-10-03 03:18:52', 1, 0, 1),
(96, 7414, 'Новая - Да', '7414', ' Из Казань Россия - В Борисов Беларусь', '1', '113', '', '08.10.18', '04.10.18', NULL, 'Дрожи в мешках навалом по 40 кг/82/82', 'задняя погрузка', '2018-10-03 03:18:52', '2018-10-03 03:18:52', 1, 0, 1);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `deal_id_from` (`deal_id_from`),
  ADD KEY `deal_id_to` (`deal_id_to`);

--
-- Индексы таблицы `deals`
--
ALTER TABLE `deals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deals_manager_id_foreign` (`manager_id`),
  ADD KEY `deals_country_id_from_foreign` (`country_id_from`) USING BTREE;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

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
  ADD CONSTRAINT `deals_country_id_from_foreign` FOREIGN KEY (`country_id_from`) REFERENCES `countries` (`deal_id_from`),
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
