-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Окт 11 2018 г., 21:30
-- Версия сервера: 5.7.23
-- Версия PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mais3rov_laravel`
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
  `deals_count` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deal_id_from` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `deal_id_to` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`id`, `short_name`, `full_name`, `flag`, `flag_mini`, `link`, `seo_url`, `deals_count`, `created_at`, `updated_at`, `deal_id_from`, `deal_id_to`) VALUES
(1, 'RU', 'Россия', 'img/flags-normal/RU.PNG', NULL, 'russia', 'russia', '10', NULL, '2018-10-11 15:30:06', 1, 1),
(2, 'MY', 'Малайзия', 'img/flags-normal/MY.PNG', NULL, 'malaysia', 'malaysia', NULL, NULL, '2018-10-11 15:30:04', 2, 2),
(3, 'KR', 'Республика Корея', 'img/flags-normal/KR.PNG', NULL, 'korea', 'korea', NULL, NULL, '2018-10-11 15:30:04', 3, 3),
(4, 'CN', 'Китай', 'img/flags-normal/CN.PNG', NULL, 'china', 'china', NULL, NULL, '2018-10-11 15:30:04', 4, 4),
(5, 'JP', 'Япония', 'img/flags-normal/JP.PNG', NULL, 'japan', 'japan', NULL, NULL, '2018-10-11 15:30:04', 5, 5),
(6, 'IN', 'Индия', 'img/flags-normal/IN.PNG', NULL, 'india', 'india', NULL, NULL, '2018-10-11 15:30:04', 6, 6),
(7, 'TW', 'Тайвань', 'img/flags-normal/TW.PNG', NULL, 'taiwan', 'taiwan', NULL, NULL, '2018-10-11 15:30:04', 7, 7),
(8, 'HK', 'Гонконг', 'img/flags-normal/HK.PNG', NULL, 'hong kong', 'hong kong', NULL, NULL, '2018-10-11 15:30:04', 8, 8),
(9, 'TH', 'Таиланд', 'img/flags-normal/TH.PNG', NULL, 'thailand', 'thailand', NULL, NULL, '2018-10-11 15:30:04', 9, 9),
(11, 'VN', 'Вьетнам', 'img/flags-normal/VN.PNG', NULL, 'vietnam', 'vietnam', NULL, NULL, '2018-10-11 15:30:04', 11, 11),
(12, 'FR', 'Франция', 'img/flags-normal/FR.PNG', NULL, 'france', 'france', NULL, NULL, '2018-10-11 15:30:04', 12, 12),
(13, 'IT', 'Италия', 'img/flags-normal/IT.PNG', NULL, 'italy', 'italy', NULL, NULL, '2018-10-11 15:30:04', 13, 13),
(14, 'AE', 'Объединенные Арабские Эмираты', 'img/flags-normal/AE.PNG', NULL, 'united arab emirates', 'united arab emirates', NULL, NULL, '2018-10-11 15:30:04', 14, 14),
(15, 'SE', 'Швеция', 'img/flags-normal/SE.PNG', NULL, 'sweden', 'sweden', NULL, NULL, '2018-10-11 15:30:04', 15, 15),
(16, 'KZ', 'Казахстан', 'img/flags-normal/KZ.PNG', NULL, 'kazakhstan', 'kazakhstan', NULL, NULL, '2018-10-11 15:30:04', 16, 16),
(17, 'PT', 'Португалия', 'img/flags-normal/PT.PNG', NULL, 'portugal', 'portugal', NULL, NULL, '2018-10-11 15:30:04', 17, 17),
(18, 'GR', 'Греция', 'img/flags-normal/GR.PNG', NULL, 'greece', 'greece', NULL, NULL, '2018-10-11 15:30:04', 18, 18),
(19, 'SA', 'Саудовская Аравия', 'img/flags-normal/SA.PNG', NULL, 'saudi arabia', 'saudi arabia', NULL, NULL, '2018-10-11 15:30:04', 19, 19),
(20, 'RU', 'Российская Федерация', 'img/flags-normal/RU.PNG', NULL, 'russian federation', 'russian federation', NULL, NULL, '2018-10-11 15:30:04', 20, 20),
(21, 'GB', 'Великобритания', 'img/flags-normal/GB.PNG', NULL, 'united kingdom', 'united kingdom', NULL, NULL, '2018-10-11 15:30:04', 21, 21),
(22, 'DK', 'Дания', 'img/flags-normal/DK.PNG', NULL, 'denmark', 'denmark', NULL, NULL, '2018-10-11 15:30:04', 22, 22),
(23, 'US', 'США', 'img/flags-normal/US.PNG', NULL, 'united states', 'united states', NULL, NULL, '2018-10-11 15:30:04', 23, 23),
(24, 'CA', 'Канада', 'img/flags-normal/CA.PNG', NULL, 'canada', 'canada', NULL, NULL, '2018-10-11 15:30:04', 24, 24),
(25, 'MX', 'Мексика', 'img/flags-normal/MX.PNG', NULL, 'mexico', 'mexico', NULL, NULL, '2018-10-11 15:30:04', 25, 25),
(26, 'BM', 'Бермуды', 'img/flags-normal/BM.PNG', NULL, 'bermuda', 'bermuda', NULL, NULL, '2018-10-11 15:30:04', 26, 26),
(27, 'PR', 'Пуэрто Рико', 'img/flags-normal/PR.PNG', NULL, 'puerto rico', 'puerto rico', NULL, NULL, '2018-10-11 15:30:04', 27, 27),
(28, 'VI', 'Виргинские Острова США', 'img/flags-normal/VI.PNG', NULL, 'virgin islands, u.s.', 'virgin islands, u.s.', NULL, NULL, '2018-10-11 15:30:04', 28, 28),
(29, 'DE', 'Германия', 'img/flags-normal/DE.PNG', NULL, 'germany', 'germany', NULL, NULL, '2018-10-11 15:30:04', 29, 29),
(30, 'IR', 'Иран', 'img/flags-normal/IR.PNG', NULL, 'iran', 'iran', NULL, NULL, '2018-10-11 15:30:04', 30, 30),
(31, 'BO', 'Боливия', 'img/flags-normal/BO.PNG', NULL, 'bolivia', 'bolivia', NULL, NULL, '2018-10-11 15:30:04', 31, 31),
(32, 'MS', 'Монтсеррат', 'img/flags-normal/MS.PNG', NULL, 'montserrat', 'montserrat', NULL, NULL, '2018-10-11 15:30:04', 32, 32),
(33, 'NL', 'Нидерланды', 'img/flags-normal/NL.PNG', NULL, 'netherlands', 'netherlands', NULL, NULL, '2018-10-11 15:30:04', 33, 33),
(34, 'IL', 'Израиль', 'img/flags-normal/IL.PNG', NULL, 'israel', 'israel', NULL, NULL, '2018-10-11 15:30:04', 34, 34),
(35, 'ES', 'Испания', 'img/flags-normal/ES.PNG', NULL, 'spain', 'spain', NULL, NULL, '2018-10-11 15:30:04', 35, 35),
(36, 'BS', 'Багамские острова', 'img/flags-normal/BS.PNG', NULL, 'bahamas', 'bahamas', NULL, NULL, '2018-10-11 15:30:04', 36, 36),
(37, 'VC', 'Сент-Винсент и Гренадины', 'img/flags-normal/VC.PNG', NULL, 'saint vincent and the grenadines', 'saint vincent and the grenadines', NULL, NULL, '2018-10-11 15:30:04', 37, 37),
(38, 'CL', 'Чили', 'img/flags-normal/CL.PNG', NULL, 'chile', 'chile', NULL, NULL, '2018-10-11 15:30:04', 38, 38),
(39, 'NC', 'Новая Каледония', 'img/flags-normal/NC.PNG', NULL, 'new caledonia', 'new caledonia', NULL, NULL, '2018-10-11 15:30:04', 39, 39),
(40, 'AR', 'Аргентина', 'img/flags-normal/AR.PNG', NULL, 'argentina', 'argentina', NULL, NULL, '2018-10-11 15:30:04', 40, 40),
(41, 'DM', 'Доминика', 'img/flags-normal/DM.PNG', NULL, 'dominica', 'dominica', NULL, NULL, '2018-10-11 15:30:04', 41, 41),
(42, 'SG', 'Сингапур', 'img/flags-normal/SG.PNG', NULL, 'singapore', 'singapore', NULL, NULL, '2018-10-11 15:30:04', 42, 42),
(43, 'NP', 'Непал', 'img/flags-normal/NP.PNG', NULL, 'nepal', 'nepal', NULL, NULL, '2018-10-11 15:30:04', 43, 43),
(44, 'PH', 'Филиппины', 'img/flags-normal/PH.PNG', NULL, 'philippines', 'philippines', NULL, NULL, '2018-10-11 15:30:04', 44, 44),
(45, 'ID', 'Индонезия', 'img/flags-normal/ID.PNG', NULL, 'indonesia', 'indonesia', NULL, NULL, '2018-10-11 15:30:04', 45, 45),
(46, 'PK', 'Пакистан', 'img/flags-normal/PK.PNG', NULL, 'pakistan', 'pakistan', NULL, NULL, '2018-10-11 15:30:04', 46, 46),
(47, 'TK', 'Токелау', 'img/flags-normal/TK.PNG', NULL, 'tokelau', 'tokelau', NULL, NULL, '2018-10-11 15:30:04', 47, 47),
(48, 'NZ', 'Новая Зеландия', 'img/flags-normal/NZ.PNG', NULL, 'new zealand', 'new zealand', NULL, NULL, '2018-10-11 15:30:04', 48, 48),
(49, 'KH', 'Камбоджа', 'img/flags-normal/KH.PNG', NULL, 'cambodia', 'cambodia', NULL, NULL, '2018-10-11 15:30:04', 49, 49),
(50, 'MO', 'Макау', 'img/flags-normal/MO.PNG', NULL, 'macau', 'macau', NULL, NULL, '2018-10-11 15:30:04', 50, 50),
(51, 'PG', 'Папуа Новая Гвинея', 'img/flags-normal/PG.PNG', NULL, 'papua new guinea', 'papua new guinea', NULL, NULL, '2018-10-11 15:30:04', 51, 51),
(52, 'MV', 'Мальдивские острова', 'img/flags-normal/MV.PNG', NULL, 'maldives', 'maldives', NULL, NULL, '2018-10-11 15:30:04', 52, 52),
(53, 'AF', 'Афганистан', 'img/flags-normal/AF.PNG', NULL, 'afghanistan', 'afghanistan', NULL, NULL, '2018-10-11 15:30:04', 53, 53),
(54, 'BD', 'Бангладеш', 'img/flags-normal/BD.PNG', NULL, 'bangladesh', 'bangladesh', NULL, NULL, '2018-10-11 15:30:04', 54, 54),
(55, 'IE', 'Ирландия', 'img/flags-normal/IE.PNG', NULL, 'ireland', 'ireland', NULL, NULL, '2018-10-11 15:30:04', 55, 55),
(56, 'BE', 'Бельгия', 'img/flags-normal/BE.PNG', NULL, 'belgium', 'belgium', NULL, NULL, '2018-10-11 15:30:04', 56, 56),
(57, 'BZ', 'Белиз', 'img/flags-normal/BZ.PNG', NULL, 'belize', 'belize', NULL, NULL, '2018-10-11 15:30:04', 57, 57),
(58, 'BR', 'Бразилия', 'img/flags-normal/BR.PNG', NULL, 'brazil', 'brazil', NULL, NULL, '2018-10-11 15:30:04', 58, 58),
(59, 'CH', 'Швейцария', 'img/flags-normal/CH.PNG', NULL, 'switzerland', 'switzerland', NULL, NULL, '2018-10-11 15:30:04', 59, 59),
(60, 'ZA', 'Южно-Африканская Республика', 'img/flags-normal/ZA.PNG', NULL, 'south africa', 'south africa', NULL, NULL, '2018-10-11 15:30:04', 60, 60),
(61, 'EG', 'Египет', 'img/flags-normal/EG.PNG', NULL, 'egypt', 'egypt', NULL, NULL, '2018-10-11 15:30:04', 61, 61),
(62, 'NG', 'Нигерия', 'img/flags-normal/NG.PNG', NULL, 'nigeria', 'nigeria', NULL, NULL, '2018-10-11 15:30:04', 62, 62),
(63, 'TZ', 'Танзания', 'img/flags-normal/TZ.PNG', NULL, 'tanzania', 'tanzania', NULL, NULL, '2018-10-11 15:30:04', 63, 63),
(64, 'ZM', 'Замбия', 'img/flags-normal/ZM.PNG', NULL, 'zambia', 'zambia', NULL, NULL, '2018-10-11 15:30:04', 64, 64),
(65, 'SN', 'Сенегал', 'img/flags-normal/SN.PNG', NULL, 'senegal', 'senegal', NULL, NULL, '2018-10-11 15:30:04', 65, 65),
(66, 'GH', 'Гана', 'img/flags-normal/GH.PNG', NULL, 'ghana', 'ghana', NULL, NULL, '2018-10-11 15:30:04', 66, 66),
(67, 'SD', 'Судан', 'img/flags-normal/SD.PNG', NULL, 'sudan', 'sudan', NULL, NULL, '2018-10-11 15:30:04', 67, 67),
(68, 'CM', 'Камерун', 'img/flags-normal/CM.PNG', NULL, 'cameroon', 'cameroon', NULL, NULL, '2018-10-11 15:30:04', 68, 68),
(69, 'MW', 'Малави', 'img/flags-normal/MW.PNG', NULL, 'malawi', 'malawi', NULL, NULL, '2018-10-11 15:30:04', 69, 69),
(70, 'AO', 'Ангола', 'img/flags-normal/AO.PNG', NULL, 'angola', 'angola', NULL, NULL, '2018-10-11 15:30:04', 70, 70),
(71, 'KE', 'Кения', 'img/flags-normal/KE.PNG', NULL, 'kenya', 'kenya', NULL, NULL, '2018-10-11 15:30:04', 71, 71),
(72, 'GA', 'Габон', 'img/flags-normal/GA.PNG', NULL, 'gabon', 'gabon', NULL, NULL, '2018-10-11 15:30:04', 72, 72),
(73, 'ML', 'Мали', 'img/flags-normal/ML.PNG', NULL, 'mali', 'mali', NULL, NULL, '2018-10-11 15:30:04', 73, 73),
(74, 'BJ', 'Бенин', 'img/flags-normal/BJ.PNG', NULL, 'benin', 'benin', NULL, NULL, '2018-10-11 15:30:04', 74, 74),
(75, 'MG', 'Мадагаскар', 'img/flags-normal/MG.PNG', NULL, 'madagascar', 'madagascar', NULL, NULL, '2018-10-11 15:30:04', 75, 75),
(76, 'TD', 'Чад', 'img/flags-normal/TD.PNG', NULL, 'chad', 'chad', NULL, NULL, '2018-10-11 15:30:04', 76, 76),
(77, 'BW', 'Ботсвана', 'img/flags-normal/BW.PNG', NULL, 'botswana', 'botswana', NULL, NULL, '2018-10-11 15:30:04', 77, 77),
(78, 'LY', 'Ливия', 'img/flags-normal/LY.PNG', NULL, 'libya', 'libya', NULL, NULL, '2018-10-11 15:30:04', 78, 78),
(79, 'CV', 'Кабо-Верде', 'img/flags-normal/CV.PNG', NULL, 'cape verde', 'cape verde', NULL, NULL, '2018-10-11 15:30:04', 79, 79),
(80, 'RW', 'Руанда', 'img/flags-normal/RW.PNG', NULL, 'rwanda', 'rwanda', NULL, NULL, '2018-10-11 15:30:04', 80, 80),
(81, 'MZ', 'Мозамбик', 'img/flags-normal/MZ.PNG', NULL, 'mozambique', 'mozambique', NULL, NULL, '2018-10-11 15:30:04', 81, 81),
(82, 'GM', 'Гамбия', 'img/flags-normal/GM.PNG', NULL, 'gambia', 'gambia', NULL, NULL, '2018-10-11 15:30:04', 82, 82),
(83, 'LS', 'Лесото', 'img/flags-normal/LS.PNG', NULL, 'lesotho', 'lesotho', NULL, NULL, '2018-10-11 15:30:04', 83, 83),
(84, 'MU', 'Маврикий', 'img/flags-normal/MU.PNG', NULL, 'mauritius', 'mauritius', NULL, NULL, '2018-10-11 15:30:04', 84, 84),
(85, 'CG', 'Конго', 'img/flags-normal/CG.PNG', NULL, 'congo', 'congo', NULL, NULL, '2018-10-11 15:30:04', 85, 85),
(86, 'UG', 'Уганда', 'img/flags-normal/UG.PNG', NULL, 'uganda', 'uganda', NULL, NULL, '2018-10-11 15:30:04', 86, 86),
(87, 'BF', 'Буркина Фасо', 'img/flags-normal/BF.PNG', NULL, 'burkina faso', 'burkina faso', NULL, NULL, '2018-10-11 15:30:04', 87, 87),
(88, 'SL', 'Сьерра-Леоне', 'img/flags-normal/SL.PNG', NULL, 'sierra leone', 'sierra leone', NULL, NULL, '2018-10-11 15:30:04', 88, 88),
(89, 'SO', 'Сомали', 'img/flags-normal/SO.PNG', NULL, 'somalia', 'somalia', NULL, NULL, '2018-10-11 15:30:04', 89, 89),
(90, 'ZW', 'Зимбабве', 'img/flags-normal/ZW.PNG', NULL, 'zimbabwe', 'zimbabwe', NULL, NULL, '2018-10-11 15:30:04', 90, 90),
(91, 'CD', 'Демократическая Республика Конго', 'img/flags-normal/CD.PNG', NULL, 'democratic republic of the congo', 'democratic republic of the congo', NULL, NULL, '2018-10-11 15:30:04', 91, 91),
(92, 'NE', 'Нигер', 'img/flags-normal/NE.PNG', NULL, 'niger', 'niger', NULL, NULL, '2018-10-11 15:30:04', 92, 92),
(93, 'CF', 'Центрально-Африканская Республика', 'img/flags-normal/CF.PNG', NULL, 'central african republic', 'central african republic', NULL, NULL, '2018-10-11 15:30:04', 93, 93),
(94, 'SZ', 'Свазиленд', 'img/flags-normal/SZ.PNG', NULL, 'swaziland', 'swaziland', NULL, NULL, '2018-10-11 15:30:04', 94, 94),
(95, 'TG', 'Того', 'img/flags-normal/TG.PNG', NULL, 'togo', 'togo', NULL, NULL, '2018-10-11 15:30:04', 95, 95),
(96, 'GN', 'Гвинея', 'img/flags-normal/GN.PNG', NULL, 'guinea', 'guinea', NULL, NULL, '2018-10-11 15:30:04', 96, 96),
(97, 'LR', 'Либерия', 'img/flags-normal/LR.PNG', NULL, 'liberia', 'liberia', NULL, NULL, '2018-10-11 15:30:04', 97, 97),
(98, 'SC', 'Сейшеллы', 'img/flags-normal/SC.PNG', NULL, 'seychelles', 'seychelles', NULL, NULL, '2018-10-11 15:30:04', 98, 98),
(99, 'MA', 'Марокко', 'img/flags-normal/MA.PNG', NULL, 'morocco', 'morocco', NULL, NULL, '2018-10-11 15:30:04', 99, 99),
(100, 'DZ', 'Алжир', 'img/flags-normal/DZ.PNG', NULL, 'algeria', 'algeria', NULL, NULL, '2018-10-11 15:30:04', 100, 100),
(101, 'MR', 'Мавритания', 'img/flags-normal/MR.PNG', NULL, 'mauritania', 'mauritania', NULL, NULL, '2018-10-11 15:30:04', 101, 101),
(102, 'NA', 'Намибия', 'img/flags-normal/NA.PNG', NULL, 'namibia', 'namibia', NULL, NULL, '2018-10-11 15:30:04', 102, 102),
(103, 'DJ', 'Джибути', 'img/flags-normal/DJ.PNG', NULL, 'djibouti', 'djibouti', NULL, NULL, '2018-10-11 15:30:04', 103, 103),
(105, 'KM', 'Коморские острова', 'img/flags-normal/KM.PNG', NULL, 'comoros', 'comoros', NULL, NULL, '2018-10-11 15:30:04', 105, 105),
(106, 'RE', 'Реюньон', 'img/flags-normal/RE.PNG', NULL, 'reunion', 'reunion', NULL, NULL, '2018-10-11 15:30:04', 106, 106),
(107, 'GQ', 'Экваториальная Гвинея', 'img/flags-normal/GQ.PNG', NULL, 'equatorial guinea', 'equatorial guinea', NULL, NULL, '2018-10-11 15:30:04', 107, 107),
(108, 'TN', 'Тунис', 'img/flags-normal/TN.PNG', NULL, 'tunisia', 'tunisia', NULL, NULL, '2018-10-11 15:30:04', 108, 108),
(109, 'TR', 'Турция', 'img/flags-normal/TR.PNG', NULL, 'turkey', 'turkey', NULL, NULL, '2018-10-11 15:30:05', 109, 109),
(110, 'PL', 'Польша', 'img/flags-normal/PL.PNG', NULL, 'poland', 'poland', '1', NULL, '2018-10-11 15:30:06', 110, 110),
(111, 'LV', 'Латвия', 'img/flags-normal/LV.PNG', NULL, 'latvia', 'latvia', NULL, NULL, '2018-10-11 15:30:05', 111, 111),
(112, 'UA', 'Украина', 'img/flags-normal/UA.PNG', NULL, 'ukraine', 'ukraine', '2', NULL, '2018-10-11 15:30:06', 112, 112),
(113, 'BY', 'Беларусь', 'img/flags-normal/BY.PNG', NULL, 'belarus', 'belarus', '14', NULL, '2018-10-11 15:30:06', 113, 113),
(114, 'CZ', 'Чехия', 'img/flags-normal/CZ.PNG', NULL, 'czech republic', 'czech republic', '2', NULL, '2018-10-11 15:30:06', 114, 114),
(115, 'PS', 'Палестина', 'img/flags-normal/PS.PNG', NULL, 'palestinian territory', 'palestinian territory', NULL, NULL, '2018-10-11 15:30:05', 115, 115),
(116, 'IS', 'Исландия', 'img/flags-normal/IS.PNG', NULL, 'iceland', 'iceland', NULL, NULL, '2018-10-11 15:30:05', 116, 116),
(117, 'CY', 'Кипр', 'img/flags-normal/CY.PNG', NULL, 'cyprus', 'cyprus', NULL, NULL, '2018-10-11 15:30:05', 117, 117),
(118, 'HU', 'Венгрия', 'img/flags-normal/HU.PNG', NULL, 'hungary', 'hungary', NULL, NULL, '2018-10-11 15:30:05', 118, 118),
(119, 'SK', 'Словакия', 'img/flags-normal/SK.PNG', NULL, 'slovakia', 'slovakia', NULL, NULL, '2018-10-11 15:30:05', 119, 119),
(120, 'RS', 'Сербия', 'img/flags-normal/RS.PNG', NULL, 'serbia', 'serbia', NULL, NULL, '2018-10-11 15:30:05', 120, 120),
(121, 'BG', 'Болгария', 'img/flags-normal/BG.PNG', NULL, 'bulgaria', 'bulgaria', NULL, NULL, '2018-10-11 15:30:05', 121, 121),
(122, 'OM', 'Оман', 'img/flags-normal/OM.PNG', NULL, 'oman', 'oman', NULL, NULL, '2018-10-11 15:30:05', 122, 122),
(123, 'RO', 'Румыния', 'img/flags-normal/RO.PNG', NULL, 'romania', 'romania', NULL, NULL, '2018-10-11 15:30:05', 123, 123),
(124, 'GE', 'Грузия', 'img/flags-normal/GE.PNG', NULL, 'georgia', 'georgia', NULL, NULL, '2018-10-11 15:30:05', 124, 124),
(125, 'NO', 'Норвегия', 'img/flags-normal/NO.PNG', NULL, 'norway', 'norway', NULL, NULL, '2018-10-11 15:30:05', 125, 125),
(126, 'AM', 'Армения', 'img/flags-normal/AM.PNG', NULL, 'armenia', 'armenia', NULL, NULL, '2018-10-11 15:30:05', 126, 126),
(127, 'AT', 'Австрия', 'img/flags-normal/AT.PNG', NULL, 'austria', 'austria', NULL, NULL, '2018-10-11 15:30:05', 127, 127),
(128, 'AL', 'Албания', 'img/flags-normal/AL.PNG', NULL, 'albania', 'albania', NULL, NULL, '2018-10-11 15:30:05', 128, 128),
(129, 'SI', 'Словения', 'img/flags-normal/SI.PNG', NULL, 'slovenia', 'slovenia', NULL, NULL, '2018-10-11 15:30:05', 129, 129),
(130, 'PA', 'Панама', 'img/flags-normal/PA.PNG', NULL, 'panama', 'panama', NULL, NULL, '2018-10-11 15:30:05', 130, 130),
(131, 'BN', 'Бруней', 'img/flags-normal/BN.PNG', NULL, 'brunei darussalam', 'brunei darussalam', NULL, NULL, '2018-10-11 15:30:05', 131, 131),
(132, 'LK', 'Шри-Ланка', 'img/flags-normal/LK.PNG', NULL, 'sri lanka', 'sri lanka', NULL, NULL, '2018-10-11 15:30:05', 132, 132),
(133, 'ME', 'Черногория', 'img/flags-normal/ME.PNG', NULL, 'montenegro', 'montenegro', NULL, NULL, '2018-10-11 15:30:05', 133, 133),
(134, 'EU', 'Европейский Союз', 'img/flags-normal/EU.PNG', NULL, 'europe', 'europe', NULL, NULL, '2018-10-11 15:30:05', 134, 134),
(135, 'TJ', 'Таджикистан', 'img/flags-normal/TJ.PNG', NULL, 'tajikistan', 'tajikistan', NULL, NULL, '2018-10-11 15:30:05', 135, 135),
(136, 'IQ', 'Ирак', 'img/flags-normal/IQ.PNG', NULL, 'iraq', 'iraq', NULL, NULL, '2018-10-11 15:30:05', 136, 136),
(137, 'LB', 'Ливан', 'img/flags-normal/LB.PNG', NULL, 'lebanon', 'lebanon', NULL, NULL, '2018-10-11 15:30:05', 137, 137),
(138, 'MD', 'Молдова', 'img/flags-normal/MD.PNG', NULL, 'moldova', 'moldova', NULL, NULL, '2018-10-11 15:30:05', 138, 138),
(139, 'FI', 'Финляндия', 'img/flags-normal/FI.PNG', NULL, 'finland', 'finland', NULL, NULL, '2018-10-11 15:30:05', 139, 139),
(140, 'EE', 'Эстония', 'img/flags-normal/EE.PNG', NULL, 'estonia', 'estonia', NULL, NULL, '2018-10-11 15:30:05', 140, 140),
(141, 'BA', 'Босния и Герцеговина', 'img/flags-normal/BA.PNG', NULL, 'bosnia and herzegovina', 'bosnia and herzegovina', NULL, NULL, '2018-10-11 15:30:05', 141, 141),
(142, 'KW', 'Кувейт', 'img/flags-normal/KW.PNG', NULL, 'kuwait', 'kuwait', NULL, NULL, '2018-10-11 15:30:05', 142, 142),
(143, 'AX', 'Аландские острова', 'img/flags-normal/AX.PNG', NULL, 'aland islands', 'aland islands', NULL, NULL, '2018-10-11 15:30:05', 143, 143),
(144, 'LT', 'Литва', 'img/flags-normal/LT.PNG', NULL, 'lithuania', 'lithuania', '1', NULL, '2018-10-11 15:30:06', 144, 144),
(145, 'LU', 'Люксембург', 'img/flags-normal/LU.PNG', NULL, 'luxembourg', 'luxembourg', NULL, NULL, '2018-10-11 15:30:05', 145, 145),
(146, 'AG', 'Антигуа и Барбуда', 'img/flags-normal/AG.PNG', NULL, 'antigua and barbuda', 'antigua and barbuda', NULL, NULL, '2018-10-11 15:30:05', 146, 146),
(147, 'MK', 'Македония', 'img/flags-normal/MK.PNG', NULL, 'macedonia', 'macedonia', NULL, NULL, '2018-10-11 15:30:05', 147, 147),
(148, 'SM', 'Сан-Марино', 'img/flags-normal/SM.PNG', NULL, 'san marino', 'san marino', NULL, NULL, '2018-10-11 15:30:05', 148, 148),
(149, 'MT', 'Мальта', 'img/flags-normal/MT.PNG', NULL, 'malta', 'malta', NULL, NULL, '2018-10-11 15:30:05', 149, 149),
(150, 'FK', 'Фолклендские острова', 'img/flags-normal/FK.PNG', NULL, 'falkland islands', 'falkland islands', NULL, NULL, '2018-10-11 15:30:05', 150, 150),
(151, 'BH', 'Бахрейн', 'img/flags-normal/BH.PNG', NULL, 'bahrain', 'bahrain', NULL, NULL, '2018-10-11 15:30:05', 151, 151),
(152, 'UZ', 'Узбекистан', 'img/flags-normal/UZ.PNG', NULL, 'uzbekistan', 'uzbekistan', NULL, NULL, '2018-10-11 15:30:05', 152, 152),
(153, 'AZ', 'Азербайджан', 'img/flags-normal/AZ.PNG', NULL, 'azerbaijan', 'azerbaijan', NULL, NULL, '2018-10-11 15:30:05', 153, 153),
(154, 'MC', 'Монако', 'img/flags-normal/MC.PNG', NULL, 'monaco', 'monaco', NULL, NULL, '2018-10-11 15:30:05', 154, 154),
(155, 'HT', 'Гаити', 'img/flags-normal/HT.PNG', NULL, 'haiti', 'haiti', NULL, NULL, '2018-10-11 15:30:05', 155, 155),
(156, 'GU', 'Гуам', 'img/flags-normal/GU.PNG', NULL, 'guam', 'guam', NULL, NULL, '2018-10-11 15:30:05', 156, 156),
(157, 'JM', 'Ямайка', 'img/flags-normal/JM.PNG', NULL, 'jamaica', 'jamaica', NULL, NULL, '2018-10-11 15:30:05', 157, 157),
(158, 'UM', 'Внешние малые острова США', 'img/flags-normal/UM.PNG', NULL, 'united states minor outlying islands', 'united states minor outlying islands', NULL, NULL, '2018-10-11 15:30:05', 158, 158),
(159, 'FM', 'Микронезия', 'img/flags-normal/FM.PNG', NULL, 'micronesia', 'micronesia', NULL, NULL, '2018-10-11 15:30:05', 159, 159),
(160, 'EC', 'Эквадор', 'img/flags-normal/EC.PNG', NULL, 'ecuador', 'ecuador', NULL, NULL, '2018-10-11 15:30:05', 160, 160),
(161, 'PE', 'Перу', 'img/flags-normal/PE.PNG', NULL, 'peru', 'peru', NULL, NULL, '2018-10-11 15:30:05', 161, 161),
(162, 'KY', 'Каймановы острова', 'img/flags-normal/KY.PNG', NULL, 'cayman islands', 'cayman islands', NULL, NULL, '2018-10-11 15:30:05', 162, 162),
(163, 'CO', 'Колумбия', 'img/flags-normal/CO.PNG', NULL, 'colombia', 'colombia', NULL, NULL, '2018-10-11 15:30:05', 163, 163),
(164, 'HN', 'Гондурас', 'img/flags-normal/HN.PNG', NULL, 'honduras', 'honduras', NULL, NULL, '2018-10-11 15:30:05', 164, 164),
(165, 'AN', 'Антильские острова', 'img/flags-normal/AN.PNG', NULL, 'netherlands antilles', 'netherlands antilles', NULL, NULL, '2018-10-11 15:30:05', 165, 165),
(166, 'YE', 'Йемен', 'img/flags-normal/YE.PNG', NULL, 'yemen', 'yemen', NULL, NULL, '2018-10-11 15:30:05', 166, 166),
(167, 'VG', 'Британские Виргинские острова', 'img/flags-normal/VG.PNG', NULL, 'virgin islands, british', 'virgin islands, british', NULL, NULL, '2018-10-11 15:30:05', 167, 167),
(168, 'SY', 'Сирия', 'img/flags-normal/SY.PNG', NULL, 'syria', 'syria', NULL, NULL, '2018-10-11 15:30:05', 168, 168),
(169, 'NI', 'Никарагуа', 'img/flags-normal/NI.PNG', NULL, 'nicaragua', 'nicaragua', NULL, NULL, '2018-10-11 15:30:05', 169, 169),
(170, 'DO', 'Доминиканская республика', 'img/flags-normal/DO.PNG', NULL, 'dominican republic', 'dominican republic', NULL, NULL, '2018-10-11 15:30:05', 170, 170),
(171, 'GD', 'Гренада', 'img/flags-normal/GD.PNG', NULL, 'grenada', 'grenada', NULL, NULL, '2018-10-11 15:30:05', 171, 171),
(172, 'GT', 'Гватемала', 'img/flags-normal/GT.PNG', NULL, 'guatemala', 'guatemala', NULL, NULL, '2018-10-11 15:30:05', 172, 172),
(173, 'CR', 'Коста-Рика', 'img/flags-normal/CR.PNG', NULL, 'costa rica', 'costa rica', NULL, NULL, '2018-10-11 15:30:05', 173, 173),
(174, 'SV', 'Сальвадор', 'img/flags-normal/SV.PNG', NULL, 'el salvador', 'el salvador', NULL, NULL, '2018-10-11 15:30:05', 174, 174),
(175, 'VE', 'Венесуэла', 'img/flags-normal/VE.PNG', NULL, 'venezuela', 'venezuela', NULL, NULL, '2018-10-11 15:30:05', 175, 175),
(176, 'BB', 'Барбадос', 'img/flags-normal/BB.PNG', NULL, 'barbados', 'barbados', NULL, NULL, '2018-10-11 15:30:05', 176, 176),
(177, 'TT', 'Тринидад и Тобаго', 'img/flags-normal/TT.PNG', NULL, 'trinidad and tobago', 'trinidad and tobago', NULL, NULL, '2018-10-11 15:30:05', 177, 177),
(178, 'BV', 'Буве', 'img/flags-normal/BV.PNG', NULL, 'bouvet island', 'bouvet island', NULL, NULL, '2018-10-11 15:30:05', 178, 178),
(179, 'MH', 'Маршалловы острова', 'img/flags-normal/MH.PNG', NULL, 'marshall islands', 'marshall islands', NULL, NULL, '2018-10-11 15:30:05', 179, 179),
(180, 'CK', 'Острова Кука', 'img/flags-normal/CK.PNG', NULL, 'cook islands', 'cook islands', NULL, NULL, '2018-10-11 15:30:05', 180, 180),
(181, 'GI', 'Гибралтар', 'img/flags-normal/GI.PNG', NULL, 'gibraltar', 'gibraltar', NULL, NULL, '2018-10-11 15:30:05', 181, 181),
(182, 'PY', 'Парагвай', 'img/flags-normal/PY.PNG', NULL, 'paraguay', 'paraguay', NULL, NULL, '2018-10-11 15:30:05', 182, 182),
(184, 'WS', 'Самоа', 'img/flags-normal/WS.PNG', NULL, 'samoa', 'samoa', NULL, NULL, '2018-10-11 15:30:05', 184, 184),
(185, 'KN', 'Сент Китс и Невис', 'img/flags-normal/KN.PNG', NULL, 'saint kitts and nevis', 'saint kitts and nevis', NULL, NULL, '2018-10-11 15:30:05', 185, 185),
(186, 'FJ', 'Фиджи', 'img/flags-normal/FJ.PNG', NULL, 'fiji', 'fiji', NULL, NULL, '2018-10-11 15:30:05', 186, 186),
(187, 'UY', 'Уругвай', 'img/flags-normal/UY.PNG', NULL, 'uruguay', 'uruguay', NULL, NULL, '2018-10-11 15:30:05', 187, 187),
(188, 'MP', 'Северные Марианские острова', 'img/flags-normal/MP.PNG', NULL, 'northern mariana islands', 'northern mariana islands', NULL, NULL, '2018-10-11 15:30:05', 188, 188),
(189, 'PW', 'Палау', 'img/flags-normal/PW.PNG', NULL, 'palau', 'palau', NULL, NULL, '2018-10-11 15:30:05', 189, 189),
(190, 'QA', 'Катар', 'img/flags-normal/QA.PNG', NULL, 'qatar', 'qatar', NULL, NULL, '2018-10-11 15:30:05', 190, 190),
(191, 'JO', 'Иордания', 'img/flags-normal/JO.PNG', NULL, 'jordan', 'jordan', NULL, NULL, '2018-10-11 15:30:05', 191, 191),
(192, 'AS', 'Американское Самоа', 'img/flags-normal/AS.PNG', NULL, 'american samoa', 'american samoa', NULL, NULL, '2018-10-11 15:30:05', 192, 192),
(193, 'TC', 'Туркс и Кейкос', 'img/flags-normal/TC.PNG', NULL, 'turks and caicos islands', 'turks and caicos islands', NULL, NULL, '2018-10-11 15:30:05', 193, 193),
(194, 'LC', 'Святая Люсия', 'img/flags-normal/LC.PNG', NULL, 'saint lucia', 'saint lucia', NULL, NULL, '2018-10-11 15:30:05', 194, 194),
(195, 'MN', 'Монголия', 'img/flags-normal/MN.PNG', NULL, 'mongolia', 'mongolia', NULL, NULL, '2018-10-11 15:30:05', 195, 195),
(196, 'VA', 'Ватикан', 'img/flags-normal/VA.PNG', NULL, 'holy see', 'holy see', NULL, NULL, '2018-10-11 15:30:05', 196, 196),
(197, 'AW', 'Арулько', 'img/flags-normal/AW.PNG', NULL, 'aruba', 'aruba', NULL, NULL, '2018-10-11 15:30:05', 197, 197),
(198, 'GY', 'Гайана', 'img/flags-normal/GY.PNG', NULL, 'guyana', 'guyana', NULL, NULL, '2018-10-11 15:30:05', 198, 198),
(199, 'SR', 'Суринам', 'img/flags-normal/SR.PNG', NULL, 'suriname', 'suriname', NULL, NULL, '2018-10-11 15:30:05', 199, 199),
(200, 'IM', 'Остров Мэн', 'img/flags-normal/IM.PNG', NULL, 'isle of man', 'isle of man', NULL, NULL, '2018-10-11 15:30:05', 200, 200),
(201, 'VU', 'Вануату', 'img/flags-normal/VU.PNG', NULL, 'vanuatu', 'vanuatu', NULL, NULL, '2018-10-11 15:30:05', 201, 201),
(202, 'HR', 'Хорватия', 'img/flags-normal/HR.PNG', NULL, 'croatia', 'croatia', NULL, NULL, '2018-10-11 15:30:05', 202, 202),
(203, 'AI', 'Ангуилья', 'img/flags-normal/AI.PNG', NULL, 'anguilla', 'anguilla', NULL, NULL, '2018-10-11 15:30:05', 203, 203),
(204, 'PM', 'Сен-Пьер и Микелон', 'img/flags-normal/PM.PNG', NULL, 'saint pierre and miquelon', 'saint pierre and miquelon', NULL, NULL, '2018-10-11 15:30:05', 204, 204),
(205, 'GP', 'Гваделупа', 'img/flags-normal/GP.PNG', NULL, 'guadeloupe', 'guadeloupe', NULL, NULL, '2018-10-11 15:30:05', 205, 205),
(206, 'MF', 'Сен-Мартен', 'img/flags-normal/MF.PNG', NULL, 'saint martin', 'saint martin', NULL, NULL, '2018-10-11 15:30:05', 206, 206),
(207, 'GG', 'Гернси', 'img/flags-normal/GG.PNG', NULL, 'guernsey', 'guernsey', NULL, NULL, '2018-10-11 15:30:05', 207, 207),
(208, 'BI', 'Бурунди', 'img/flags-normal/BI.PNG', NULL, 'burundi', 'burundi', NULL, NULL, '2018-10-11 15:30:05', 208, 208),
(209, 'TM', 'Туркменистан', 'img/flags-normal/TM.PNG', NULL, 'turkmenistan', 'turkmenistan', NULL, NULL, '2018-10-11 15:30:05', 209, 209),
(210, 'KG', 'Кыргызстан', 'img/flags-normal/KG.PNG', NULL, 'kyrgyzstan', 'kyrgyzstan', NULL, NULL, '2018-10-11 15:30:05', 210, 210),
(211, 'MM', 'Мьянма', 'img/flags-normal/MM.PNG', NULL, 'myanmar', 'myanmar', NULL, NULL, '2018-10-11 15:30:05', 211, 211),
(212, 'BT', 'Бутан', 'img/flags-normal/BT.PNG', NULL, 'bhutan', 'bhutan', NULL, NULL, '2018-10-11 15:30:05', 212, 212),
(213, 'LI', 'Лихтенштейн', 'img/flags-normal/LI.PNG', NULL, 'liechtenstein', 'liechtenstein', NULL, NULL, '2018-10-11 15:30:05', 213, 213),
(214, 'FO', 'Фарерские острова', 'img/flags-normal/FO.PNG', NULL, 'faroe islands', 'faroe islands', NULL, NULL, '2018-10-11 15:30:06', 214, 214),
(215, 'ET', 'Эфиопия', 'img/flags-normal/ET.PNG', NULL, 'ethiopia', 'ethiopia', NULL, NULL, '2018-10-11 15:30:06', 215, 215),
(216, 'MQ', 'Мартиника', 'img/flags-normal/MQ.PNG', NULL, 'martinique', 'martinique', NULL, NULL, '2018-10-11 15:30:06', 216, 216),
(217, 'JE', 'Джерси', 'img/flags-normal/JE.PNG', NULL, 'jersey', 'jersey', NULL, NULL, '2018-10-11 15:30:06', 217, 217),
(218, 'AD', 'Андорра', 'img/flags-normal/AD.PNG', NULL, 'andorra', 'andorra', NULL, NULL, '2018-10-11 15:30:06', 218, 218),
(219, 'AQ', 'Антарктида', 'img/flags-normal/AQ.PNG', NULL, 'antarctica', 'antarctica', NULL, NULL, '2018-10-11 15:30:06', 219, 219),
(220, 'IO', 'Британская территория в Индийском океане', 'img/flags-normal/IO.PNG', NULL, 'british indian ocean territory', 'british indian ocean territory', NULL, NULL, '2018-10-11 15:30:06', 220, 220),
(221, 'GL', 'Гренландия', 'img/flags-normal/GL.PNG', NULL, 'greenland', 'greenland', NULL, NULL, '2018-10-11 15:30:06', 221, 221),
(222, 'GW', 'Гвинея-Бисау', 'img/flags-normal/GW.PNG', NULL, 'guinea-bissau', 'guinea-bissau', NULL, NULL, '2018-10-11 15:30:06', 222, 222),
(223, 'ER', 'Эритрея', 'img/flags-normal/ER.PNG', NULL, 'eritrea', 'eritrea', NULL, NULL, '2018-10-11 15:30:06', 223, 223),
(224, 'WF', 'Уоллис и Футуна', 'img/flags-normal/WF.PNG', NULL, 'wallis and futuna', 'wallis and futuna', NULL, NULL, '2018-10-11 15:30:06', 224, 224),
(225, 'PF', 'Французская Полинезия', 'img/flags-normal/PF.PNG', NULL, 'french polynesia', 'french polynesia', NULL, NULL, '2018-10-11 15:30:06', 225, 225),
(226, 'CU', 'Куба', 'img/flags-normal/CU.PNG', NULL, 'cuba', 'cuba', NULL, NULL, '2018-10-11 15:30:06', 226, 226),
(227, 'TO', 'Тонга', 'img/flags-normal/TO.PNG', NULL, 'tonga', 'tonga', NULL, NULL, '2018-10-11 15:30:06', 227, 227),
(228, 'TL', 'Восточный Тимор', 'img/flags-normal/TL.PNG', NULL, 'timor-leste', 'timor-leste', NULL, NULL, '2018-10-11 15:30:06', 228, 228),
(229, 'ST', 'Сан-Томе и Принсипи', 'img/flags-normal/ST.PNG', NULL, 'sao tome and principe', 'sao tome and principe', NULL, NULL, '2018-10-11 15:30:06', 229, 229),
(230, 'GF', 'Французская Гвинея', 'img/flags-normal/GF.PNG', NULL, 'french guiana', 'french guiana', NULL, NULL, '2018-10-11 15:30:06', 230, 230),
(231, 'SB', 'Соломоновы острова', 'img/flags-normal/SB.PNG', NULL, 'solomon islands', 'solomon islands', NULL, NULL, '2018-10-11 15:30:06', 231, 231),
(232, 'TV', 'Тувалу', 'img/flags-normal/TV.PNG', NULL, 'tuvalu', 'tuvalu', NULL, NULL, '2018-10-11 15:30:06', 232, 232),
(233, 'KI', 'Кирибати', 'img/flags-normal/KI.PNG', NULL, 'kiribati', 'kiribati', NULL, NULL, '2018-10-11 15:30:06', 233, 233),
(234, 'NU', 'Ниуэ', 'img/flags-normal/NU.PNG', NULL, 'niue', 'niue', NULL, NULL, '2018-10-11 15:30:06', 234, 234),
(235, 'NF', 'Норфолк', 'img/flags-normal/NF.PNG', NULL, 'norfolk island', 'norfolk island', NULL, NULL, '2018-10-11 15:30:06', 235, 235),
(236, 'NR', 'Науру', 'img/flags-normal/NR.PNG', NULL, 'nauru', 'nauru', NULL, NULL, '2018-10-11 15:30:06', 236, 236),
(237, 'YT', 'Майотта', 'img/flags-normal/YT.PNG', NULL, 'mayotte', 'mayotte', NULL, NULL, '2018-10-11 15:30:06', 237, 237),
(238, 'PN', 'Питкэрн', 'img/flags-normal/PN.PNG', NULL, 'pitcairn islands', 'pitcairn islands', NULL, NULL, '2018-10-11 15:30:06', 238, 238),
(239, 'CI', 'Кот-д\'Ивуар', 'img/flags-normal/CI.PNG', NULL, 'cote d\'ivoire', 'cote d\'ivoire', NULL, NULL, '2018-10-11 15:30:06', 239, 239),
(240, 'LA', 'Лаос', 'img/flags-normal/LA.PNG', NULL, 'lao', 'lao', NULL, NULL, '2018-10-11 15:30:06', 240, 240),
(241, 'KP', 'Корейская Народно-Демократическая Республика', 'img/flags-normal/KP.PNG', NULL, 'democratic people\'s republic of korea', 'democratic people\'s republic of korea', NULL, NULL, '2018-10-11 15:30:06', 241, 241),
(242, 'SJ', 'Свальбард и Ян-Майен', 'img/flags-normal/SJ.PNG', NULL, 'svalbard and jan mayen', 'svalbard and jan mayen', NULL, NULL, '2018-10-11 15:30:06', 242, 242),
(243, 'SH', 'Остров Святой Елены', 'img/flags-normal/SH.PNG', NULL, 'saint helena', 'saint helena', NULL, NULL, '2018-10-11 15:30:06', 243, 243),
(244, 'CC', 'Кокосовые острова', 'img/flags-normal/CC.PNG', NULL, 'cocos (keeling) islands', 'cocos (keeling) islands', NULL, NULL, '2018-10-11 15:30:06', 244, 244),
(245, 'EH', 'Западная Сахара', 'img/flags-normal/EH.PNG', NULL, 'western sahara', 'western sahara', NULL, NULL, '2018-10-11 15:30:06', 245, 245),
(246, 'AU', 'Австралия', 'img/flags-normal/AU.PNG', NULL, 'australia', 'australia', NULL, NULL, '2018-10-11 15:30:06', 246, 246),
(247, 'SS', 'Южный Судан', 'img/flags-normal/SS.PNG', NULL, 'south sudan', 'south sudan', NULL, NULL, '2018-10-11 15:30:06', 247, 247);

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
(519, 7468, 'Новая - Да', '7468', ' Из Быково Россия - В Шумилино Беларусь', '1', '113', '', '15.10.18', '11.10.18', NULL, 'крышки - 1 (обьем или масса)', 'задняя', '2018-10-11 15:30:03', '2018-10-11 15:30:03', 1, 113, 1),
(520, 7466, 'Новая - Да', '7466', ' Из Волгоград Россия - В Брест Беларусь', '1', '113', '', '15.10.18', '12.10.18', 'ДОПОЛГ класс3', 'Краска ADR3 - 82 (обьем или масса)', 'Задняя погрузка', '2018-10-11 15:30:03', '2018-10-11 15:30:03', 1, 113, 1),
(521, 7460, 'Новая - Да', '7460', ' Из Богданов Беларусь - В Прушкув Польша', '113', '110', '', '12.10.18', '09.10.18', 'нет', 'лента битумная на паллетах - 82 (обьем или масса)', 'загрузка/выгрузка зад, ремни\nгруз на паллетах', '2018-10-11 15:30:03', '2018-10-11 15:30:03', 113, 110, 1),
(522, 7455, 'Новая - Да', '7455', ' Из Октябрьская Беларусь - В Пльзень Чехия', '113', '114', '', '15.10.18', '12.10.18', 'Наличие комплекта ремней', 'Строительные панели - 100 (обьем или масса)', 'Верхняя погрузка', '2018-10-11 15:30:03', '2018-10-11 15:30:03', 113, 114, 1),
(523, 7454, 'Новая - Да', '7454', ' Из Октябрьская Беларусь - В Пльзень Чехия', '113', '114', '', '15.10.18', '12.10.18', 'Наличие комплекта ремней', 'Строительные панели - 100 (обьем или масса)', 'Верхняя погрузка', '2018-10-11 15:30:03', '2018-10-11 15:30:03', 113, 114, 1),
(524, 7449, 'Новая - Да', '7449', ' Из Новочебоксарск Россия - В Минск Беларусь', '1', '113', '', '10.10.18', '08.10.18', 'ADR 5.2', 'перекись водорода в бочках на паллетах - 82 (обьем или масса)', 'задняя/боковая ремни, АДР 5', '2018-10-11 15:30:03', '2018-10-11 15:30:03', 1, 113, 1),
(525, 7442, 'Новая - Да', '7442', ' Из Камышин Россия - В Пуховичи Беларусь', '1', '113', '', '19.10.18', '15.10.18', 'Способ крепления 3 стяжных ремня. Закрепление груза осуществляется под руководством работника завода', 'бутылка - 82 (обьем или масса)', 'габарит 1 паллеты 1200*1000*1900 мм\r\n22 паллеты', '2018-10-11 15:30:03', '2018-10-11 15:30:03', 1, 113, 1),
(526, 7437, 'Новая - Да', '7437', ' Из Волгоград Россия - В Колодищи Беларусь', '1', '113', '', '08.10.18', '05.10.18', 'Чистая автоцистерна', 'Хлорпарафин ХП470 - 30 (обьем или масса)', 'Наличие ДОПОГ ', '2018-10-11 15:30:03', '2018-10-11 15:30:03', 1, 113, 1),
(527, 7436, 'Новая - Да', '7436', ' Из Киев Украина - В Вильнюс Литва', '112', '144', '', '03.10.18', '01.10.18', NULL, 'пиво - 82 (обьем или масса)', 'режим не ниже +2', '2018-10-11 15:30:03', '2018-10-11 15:30:03', 112, 144, 1),
(528, 7433, 'Новая - Да', '7433', ' Из Глубокое Беларусь - В Харьков Украина', '113', '112', '', '16.10.18', '12.10.18', NULL, 'консервы молочные - 82 (обьем или масса)', 'без терморежима', '2018-10-11 15:30:03', '2018-10-11 15:30:03', 113, 112, 1),
(529, 7429, 'Новая - Да', '7429', ' Из Выкса Россия - В Минск Беларусь', '1', '113', '', '28.09.18', '27.09.18', NULL, 'металл - 0 (обьем или масса)', 'металл', '2018-10-11 15:30:04', '2018-10-11 15:30:04', 1, 113, 1),
(530, 7425, 'Новая - Да', '7425', ' Из Екатеринбург Россия - В Минск Беларусь', '1', '113', '', '27.09.18', '25.09.18', 'Чистая автоцистерна, гумированная или стеклопластиковая цистерна для агрессивных жидкостей', 'Алюминий хлорид диоксид АДР 8,3 ООН 3264 - 30000 (обьем или масса)', 'верхняя погрузка', '2018-10-11 15:30:04', '2018-10-11 15:30:04', 1, 113, 1),
(531, 7424, 'Новая - Да', '7424', ' Из Дзержинск Россия - В Новополоцк Беларусь', '1', '113', '', '27.09.18', '25.09.18', 'Чистая автоцистерна с подогревом', 'Присадка, АДР 9 ООН - 3082 - 19.64 (обьем или масса)', 'Чистая автоцистерна', '2018-10-11 15:30:04', '2018-10-11 15:30:04', 1, 113, 1),
(532, 7423, 'Новая - Да', '7423', ' Из Казань Россия - В Минск Беларусь', '1', '113', '', '27.09.18', '25.09.18', NULL, 'Моноэтиленгликоль плотность 1,12 - 19.64 (обьем или масса)', 'Чистая автоцистерна', '2018-10-11 15:30:04', '2018-10-11 15:30:04', 1, 113, 1),
(533, 7422, 'Новая - Да', '7422', ' Из Казань Россия - В Минск Беларусь', '1', '113', '', '27.09.18', '25.09.18', NULL, 'Моноэтиленгликоль плотность 1,12 - 19.64 (обьем или масса)', 'Чистая автоцистерна', '2018-10-11 15:30:04', '2018-10-11 15:30:04', 1, 113, 1);

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
  ADD KEY `deals_country_id_from_foreign` (`country_id_from`) USING BTREE,
  ADD KEY `country_id_to` (`country_id_to`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=534;

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
  ADD CONSTRAINT `deals_country_id_to_foreign` FOREIGN KEY (`country_id_to`) REFERENCES `countries` (`deal_id_to`),
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
