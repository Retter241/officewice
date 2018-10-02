-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 02 2018 г., 15:30
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
  `deal_id` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`id`, `short_name`, `full_name`, `flag`, `flag_mini`, `link`, `seo_url`, `created_at`, `updated_at`, `deal_id`) VALUES
(1, 'RU', 'Россия', 'img/flags-normal/RU.PNG', NULL, 'Russia', 'Russia', NULL, '2018-10-01 22:44:10', 1),
(2, 'MY', 'Малайзия', 'img/flags-normal/MY.PNG', NULL, 'Malaysia', 'Malaysia', NULL, '2018-10-01 22:44:11', 1),
(3, 'KR', 'Республика Корея', 'img/flags-normal/KR.PNG', NULL, 'Korea', 'Korea', NULL, '2018-10-01 22:44:11', 1),
(4, 'CN', 'Китай', 'img/flags-normal/CN.PNG', NULL, 'China', 'China', NULL, '2018-10-01 22:44:11', 1),
(5, 'JP', 'Япония', 'img/flags-normal/JP.PNG', NULL, 'Japan', 'Japan', NULL, '2018-10-01 22:44:11', 1),
(6, 'IN', 'Индия', 'img/flags-normal/IN.PNG', NULL, 'India', 'India', NULL, '2018-10-01 22:44:11', 1),
(7, 'TW', 'Тайвань', 'img/flags-normal/TW.PNG', NULL, 'Taiwan', 'Taiwan', NULL, '2018-10-01 22:44:11', 1),
(8, 'HK', 'Гонконг', 'img/flags-normal/HK.PNG', NULL, 'Hong Kong', 'Hong Kong', NULL, '2018-10-01 22:44:11', 1),
(9, 'TH', 'Таиланд', 'img/flags-normal/TH.PNG', NULL, 'Thailand', 'Thailand', NULL, '2018-10-01 22:44:11', 1),
(11, 'VN', 'Вьетнам', 'img/flags-normal/VN.PNG', NULL, 'Vietnam', 'Vietnam', NULL, '2018-10-01 22:44:11', 1),
(12, 'FR', 'Франция', 'img/flags-normal/FR.PNG', NULL, 'France', 'France', NULL, '2018-10-01 22:44:11', 1),
(13, 'IT', 'Италия', 'img/flags-normal/IT.PNG', NULL, 'Italy', 'Italy', NULL, '2018-10-01 22:44:11', 1),
(14, 'AE', 'Объединенные Арабские Эмираты', 'img/flags-normal/AE.PNG', NULL, 'United Arab Emirates', 'United Arab Emirates', NULL, '2018-10-01 22:44:11', 1),
(15, 'SE', 'Швеция', 'img/flags-normal/SE.PNG', NULL, 'Sweden', 'Sweden', NULL, '2018-10-01 22:44:11', 1),
(16, 'KZ', 'Казахстан', 'img/flags-normal/KZ.PNG', NULL, 'Kazakhstan', 'Kazakhstan', NULL, '2018-10-01 22:44:11', 1),
(17, 'PT', 'Португалия', 'img/flags-normal/PT.PNG', NULL, 'Portugal', 'Portugal', NULL, '2018-10-01 22:44:11', 1),
(18, 'GR', 'Греция', 'img/flags-normal/GR.PNG', NULL, 'Greece', 'Greece', NULL, '2018-10-01 22:44:11', 1),
(19, 'SA', 'Саудовская Аравия', 'img/flags-normal/SA.PNG', NULL, 'Saudi Arabia', 'Saudi Arabia', NULL, '2018-10-01 22:44:11', 1),
(20, 'RU', 'Российская Федерация', 'img/flags-normal/RU.PNG', NULL, 'Russian Federation', 'Russian Federation', NULL, '2018-10-01 22:44:11', 1),
(21, 'GB', 'Великобритания', 'img/flags-normal/GB.PNG', NULL, 'United Kingdom', 'United Kingdom', NULL, '2018-10-01 22:44:11', 1),
(22, 'DK', 'Дания', 'img/flags-normal/DK.PNG', NULL, 'Denmark', 'Denmark', NULL, '2018-10-01 22:44:11', 1),
(23, 'US', 'США', 'img/flags-normal/US.PNG', NULL, 'United States', 'United States', NULL, '2018-10-01 22:44:11', 1),
(24, 'CA', 'Канада', 'img/flags-normal/CA.PNG', NULL, 'Canada', 'Canada', NULL, '2018-10-01 22:44:11', 1),
(25, 'MX', 'Мексика', 'img/flags-normal/MX.PNG', NULL, 'Mexico', 'Mexico', NULL, '2018-10-01 22:44:11', 1),
(26, 'BM', 'Бермуды', 'img/flags-normal/BM.PNG', NULL, 'Bermuda', 'Bermuda', NULL, '2018-10-01 22:44:11', 1),
(27, 'PR', 'Пуэрто Рико', 'img/flags-normal/PR.PNG', NULL, 'Puerto Rico', 'Puerto Rico', NULL, '2018-10-01 22:44:11', 1),
(28, 'VI', 'Виргинские Острова США', 'img/flags-normal/VI.PNG', NULL, 'Virgin Islands, U.S.', 'Virgin Islands, U.S.', NULL, '2018-10-01 22:44:11', 1),
(29, 'DE', 'Германия', 'img/flags-normal/DE.PNG', NULL, 'Germany', 'Germany', NULL, '2018-10-01 22:44:11', 1),
(30, 'IR', 'Иран', 'img/flags-normal/IR.PNG', NULL, 'Iran', 'Iran', NULL, '2018-10-01 22:44:11', 1),
(31, 'BO', 'Боливия', 'img/flags-normal/BO.PNG', NULL, 'Bolivia', 'Bolivia', NULL, '2018-10-01 22:44:11', 1),
(32, 'MS', 'Монтсеррат', 'img/flags-normal/MS.PNG', NULL, 'Montserrat', 'Montserrat', NULL, '2018-10-01 22:44:11', 1),
(33, 'NL', 'Нидерланды', 'img/flags-normal/NL.PNG', NULL, 'Netherlands', 'Netherlands', NULL, '2018-10-01 22:44:11', 1),
(34, 'IL', 'Израиль', 'img/flags-normal/IL.PNG', NULL, 'Israel', 'Israel', NULL, '2018-10-01 22:44:11', 1),
(35, 'ES', 'Испания', 'img/flags-normal/ES.PNG', NULL, 'Spain', 'Spain', NULL, '2018-10-01 22:44:11', 1),
(36, 'BS', 'Багамские острова', 'img/flags-normal/BS.PNG', NULL, 'Bahamas', 'Bahamas', NULL, '2018-10-01 22:44:11', 1),
(37, 'VC', 'Сент-Винсент и Гренадины', 'img/flags-normal/VC.PNG', NULL, 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', NULL, '2018-10-01 22:44:11', 1),
(38, 'CL', 'Чили', 'img/flags-normal/CL.PNG', NULL, 'Chile', 'Chile', NULL, '2018-10-01 22:44:11', 1),
(39, 'NC', 'Новая Каледония', 'img/flags-normal/NC.PNG', NULL, 'New Caledonia', 'New Caledonia', NULL, '2018-10-01 22:44:11', 1),
(40, 'AR', 'Аргентина', 'img/flags-normal/AR.PNG', NULL, 'Argentina', 'Argentina', NULL, '2018-10-01 22:44:11', 1),
(41, 'DM', 'Доминика', 'img/flags-normal/DM.PNG', NULL, 'Dominica', 'Dominica', NULL, '2018-10-01 22:44:11', 1),
(42, 'SG', 'Сингапур', 'img/flags-normal/SG.PNG', NULL, 'Singapore', 'Singapore', NULL, '2018-10-01 22:44:11', 1),
(43, 'NP', 'Непал', 'img/flags-normal/NP.PNG', NULL, 'Nepal', 'Nepal', NULL, '2018-10-01 22:44:11', 1),
(44, 'PH', 'Филиппины', 'img/flags-normal/PH.PNG', NULL, 'Philippines', 'Philippines', NULL, '2018-10-01 22:44:11', 1),
(45, 'ID', 'Индонезия', 'img/flags-normal/ID.PNG', NULL, 'Indonesia', 'Indonesia', NULL, '2018-10-01 22:44:11', 1),
(46, 'PK', 'Пакистан', 'img/flags-normal/PK.PNG', NULL, 'Pakistan', 'Pakistan', NULL, '2018-10-01 22:44:11', 1),
(47, 'TK', 'Токелау', 'img/flags-normal/TK.PNG', NULL, 'Tokelau', 'Tokelau', NULL, '2018-10-01 22:44:11', 1),
(48, 'NZ', 'Новая Зеландия', 'img/flags-normal/NZ.PNG', NULL, 'New Zealand', 'New Zealand', NULL, '2018-10-01 22:44:11', 1),
(49, 'KH', 'Камбоджа', 'img/flags-normal/KH.PNG', NULL, 'Cambodia', 'Cambodia', NULL, '2018-10-01 22:44:11', 1),
(50, 'MO', 'Макау', 'img/flags-normal/MO.PNG', NULL, 'Macau', 'Macau', NULL, '2018-10-01 22:44:11', 1),
(51, 'PG', 'Папуа Новая Гвинея', 'img/flags-normal/PG.PNG', NULL, 'Papua New Guinea', 'Papua New Guinea', NULL, '2018-10-01 22:44:11', 1),
(52, 'MV', 'Мальдивские острова', 'img/flags-normal/MV.PNG', NULL, 'Maldives', 'Maldives', NULL, '2018-10-01 22:44:11', 1),
(53, 'AF', 'Афганистан', 'img/flags-normal/AF.PNG', NULL, 'Afghanistan', 'Afghanistan', NULL, '2018-10-01 22:44:11', 1),
(54, 'BD', 'Бангладеш', 'img/flags-normal/BD.PNG', NULL, 'Bangladesh', 'Bangladesh', NULL, '2018-10-01 22:44:11', 1),
(55, 'IE', 'Ирландия', 'img/flags-normal/IE.PNG', NULL, 'Ireland', 'Ireland', NULL, '2018-10-01 22:44:11', 1),
(56, 'BE', 'Бельгия', 'img/flags-normal/BE.PNG', NULL, 'Belgium', 'Belgium', NULL, '2018-10-01 22:44:11', 1),
(57, 'BZ', 'Белиз', 'img/flags-normal/BZ.PNG', NULL, 'Belize', 'Belize', NULL, '2018-10-01 22:44:11', 1),
(58, 'BR', 'Бразилия', 'img/flags-normal/BR.PNG', NULL, 'Brazil', 'Brazil', NULL, '2018-10-01 22:44:11', 1),
(59, 'CH', 'Швейцария', 'img/flags-normal/CH.PNG', NULL, 'Switzerland', 'Switzerland', NULL, '2018-10-01 22:44:11', 1),
(60, 'ZA', 'Южно-Африканская Республика', 'img/flags-normal/ZA.PNG', NULL, 'South Africa', 'South Africa', NULL, '2018-10-01 22:44:11', 1),
(61, 'EG', 'Египет', 'img/flags-normal/EG.PNG', NULL, 'Egypt', 'Egypt', NULL, '2018-10-01 22:44:11', 1),
(62, 'NG', 'Нигерия', 'img/flags-normal/NG.PNG', NULL, 'Nigeria', 'Nigeria', NULL, '2018-10-01 22:44:11', 1),
(63, 'TZ', 'Танзания', 'img/flags-normal/TZ.PNG', NULL, 'Tanzania', 'Tanzania', NULL, '2018-10-01 22:44:11', 1),
(64, 'ZM', 'Замбия', 'img/flags-normal/ZM.PNG', NULL, 'Zambia', 'Zambia', NULL, '2018-10-01 22:44:11', 1),
(65, 'SN', 'Сенегал', 'img/flags-normal/SN.PNG', NULL, 'Senegal', 'Senegal', NULL, '2018-10-01 22:44:11', 1),
(66, 'GH', 'Гана', 'img/flags-normal/GH.PNG', NULL, 'Ghana', 'Ghana', NULL, '2018-10-01 22:44:11', 1),
(67, 'SD', 'Судан', 'img/flags-normal/SD.PNG', NULL, 'Sudan', 'Sudan', NULL, '2018-10-01 22:44:11', 1),
(68, 'CM', 'Камерун', 'img/flags-normal/CM.PNG', NULL, 'Cameroon', 'Cameroon', NULL, '2018-10-01 22:44:11', 1),
(69, 'MW', 'Малави', 'img/flags-normal/MW.PNG', NULL, 'Malawi', 'Malawi', NULL, '2018-10-01 22:44:11', 1),
(70, 'AO', 'Ангола', 'img/flags-normal/AO.PNG', NULL, 'Angola', 'Angola', NULL, '2018-10-01 22:44:11', 1),
(71, 'KE', 'Кения', 'img/flags-normal/KE.PNG', NULL, 'Kenya', 'Kenya', NULL, '2018-10-01 22:44:11', 1),
(72, 'GA', 'Габон', 'img/flags-normal/GA.PNG', NULL, 'Gabon', 'Gabon', NULL, '2018-10-01 22:44:11', 1),
(73, 'ML', 'Мали', 'img/flags-normal/ML.PNG', NULL, 'Mali', 'Mali', NULL, '2018-10-01 22:44:11', 1),
(74, 'BJ', 'Бенин', 'img/flags-normal/BJ.PNG', NULL, 'Benin', 'Benin', NULL, '2018-10-01 22:44:11', 1),
(75, 'MG', 'Мадагаскар', 'img/flags-normal/MG.PNG', NULL, 'Madagascar', 'Madagascar', NULL, '2018-10-01 22:44:11', 1),
(76, 'TD', 'Чад', 'img/flags-normal/TD.PNG', NULL, 'Chad', 'Chad', NULL, '2018-10-01 22:44:11', 1),
(77, 'BW', 'Ботсвана', 'img/flags-normal/BW.PNG', NULL, 'Botswana', 'Botswana', NULL, '2018-10-01 22:44:11', 1),
(78, 'LY', 'Ливия', 'img/flags-normal/LY.PNG', NULL, 'Libya', 'Libya', NULL, '2018-10-01 22:44:11', 1),
(79, 'CV', 'Кабо-Верде', 'img/flags-normal/CV.PNG', NULL, 'Cape Verde', 'Cape Verde', NULL, '2018-10-01 22:44:11', 1),
(80, 'RW', 'Руанда', 'img/flags-normal/RW.PNG', NULL, 'Rwanda', 'Rwanda', NULL, '2018-10-01 22:44:11', 1),
(81, 'MZ', 'Мозамбик', 'img/flags-normal/MZ.PNG', NULL, 'Mozambique', 'Mozambique', NULL, '2018-10-01 22:44:11', 1),
(82, 'GM', 'Гамбия', 'img/flags-normal/GM.PNG', NULL, 'Gambia', 'Gambia', NULL, '2018-10-01 22:44:11', 1),
(83, 'LS', 'Лесото', 'img/flags-normal/LS.PNG', NULL, 'Lesotho', 'Lesotho', NULL, '2018-10-01 22:44:11', 1),
(84, 'MU', 'Маврикий', 'img/flags-normal/MU.PNG', NULL, 'Mauritius', 'Mauritius', NULL, '2018-10-01 22:44:11', 1),
(85, 'CG', 'Конго', 'img/flags-normal/CG.PNG', NULL, 'Congo', 'Congo', NULL, '2018-10-01 22:44:11', 1),
(86, 'UG', 'Уганда', 'img/flags-normal/UG.PNG', NULL, 'Uganda', 'Uganda', NULL, '2018-10-01 22:44:11', 1),
(87, 'BF', 'Буркина Фасо', 'img/flags-normal/BF.PNG', NULL, 'Burkina Faso', 'Burkina Faso', NULL, '2018-10-01 22:44:11', 1),
(88, 'SL', 'Сьерра-Леоне', 'img/flags-normal/SL.PNG', NULL, 'Sierra Leone', 'Sierra Leone', NULL, '2018-10-01 22:44:11', 1),
(89, 'SO', 'Сомали', 'img/flags-normal/SO.PNG', NULL, 'Somalia', 'Somalia', NULL, '2018-10-01 22:44:11', 1),
(90, 'ZW', 'Зимбабве', 'img/flags-normal/ZW.PNG', NULL, 'Zimbabwe', 'Zimbabwe', NULL, '2018-10-01 22:44:11', 1),
(91, 'CD', 'Демократическая Республика Конго', 'img/flags-normal/CD.PNG', NULL, 'Democratic Republic Of The Congo', 'Democratic Republic Of The Congo', NULL, '2018-10-01 22:44:11', 1),
(92, 'NE', 'Нигер', 'img/flags-normal/NE.PNG', NULL, 'Niger', 'Niger', NULL, '2018-10-01 22:44:11', 1),
(93, 'CF', 'Центрально-Африканская Республика', 'img/flags-normal/CF.PNG', NULL, 'Central African Republic', 'Central African Republic', NULL, '2018-10-01 22:44:11', 1),
(94, 'SZ', 'Свазиленд', 'img/flags-normal/SZ.PNG', NULL, 'Swaziland', 'Swaziland', NULL, '2018-10-01 22:44:11', 1),
(95, 'TG', 'Того', 'img/flags-normal/TG.PNG', NULL, 'Togo', 'Togo', NULL, '2018-10-01 22:44:11', 1),
(96, 'GN', 'Гвинея', 'img/flags-normal/GN.PNG', NULL, 'Guinea', 'Guinea', NULL, '2018-10-01 22:44:11', 1),
(97, 'LR', 'Либерия', 'img/flags-normal/LR.PNG', NULL, 'Liberia', 'Liberia', NULL, '2018-10-01 22:44:11', 1),
(98, 'SC', 'Сейшеллы', 'img/flags-normal/SC.PNG', NULL, 'Seychelles', 'Seychelles', NULL, '2018-10-01 22:44:11', 1),
(99, 'MA', 'Марокко', 'img/flags-normal/MA.PNG', NULL, 'Morocco', 'Morocco', NULL, '2018-10-01 22:44:11', 1),
(100, 'DZ', 'Алжир', 'img/flags-normal/DZ.PNG', NULL, 'Algeria', 'Algeria', NULL, '2018-10-01 22:44:11', 1),
(101, 'MR', 'Мавритания', 'img/flags-normal/MR.PNG', NULL, 'Mauritania', 'Mauritania', NULL, '2018-10-01 22:44:11', 1),
(102, 'NA', 'Намибия', 'img/flags-normal/NA.PNG', NULL, 'Namibia', 'Namibia', NULL, '2018-10-01 22:44:11', 1),
(103, 'DJ', 'Джибути', 'img/flags-normal/DJ.PNG', NULL, 'Djibouti', 'Djibouti', NULL, '2018-10-01 22:44:11', 1),
(105, 'KM', 'Коморские острова', 'img/flags-normal/KM.PNG', NULL, 'Comoros', 'Comoros', NULL, '2018-10-01 22:44:11', 1),
(106, 'RE', 'Реюньон', 'img/flags-normal/RE.PNG', NULL, 'Reunion', 'Reunion', NULL, '2018-10-01 22:44:11', 1),
(107, 'GQ', 'Экваториальная Гвинея', 'img/flags-normal/GQ.PNG', NULL, 'Equatorial Guinea', 'Equatorial Guinea', NULL, '2018-10-01 22:44:11', 1),
(108, 'TN', 'Тунис', 'img/flags-normal/TN.PNG', NULL, 'Tunisia', 'Tunisia', NULL, '2018-10-01 22:44:11', 1),
(109, 'TR', 'Турция', 'img/flags-normal/TR.PNG', NULL, 'Turkey', 'Turkey', NULL, '2018-10-01 22:44:11', 1),
(110, 'PL', 'Польша', 'img/flags-normal/PL.PNG', NULL, 'Poland', 'Poland', NULL, '2018-10-01 22:44:11', 1),
(111, 'LV', 'Латвия', 'img/flags-normal/LV.PNG', NULL, 'Latvia', 'Latvia', NULL, '2018-10-01 22:44:11', 1),
(112, 'UA', 'Украина', 'img/flags-normal/UA.PNG', NULL, 'Ukraine', 'Ukraine', NULL, '2018-10-01 22:44:11', 1),
(113, 'BY', 'Беларусь', 'img/flags-normal/BY.PNG', NULL, 'Belarus', 'Belarus', NULL, '2018-10-01 22:44:11', 1),
(114, 'CZ', 'Чехия', 'img/flags-normal/CZ.PNG', NULL, 'Czech Republic', 'Czech Republic', NULL, '2018-10-01 22:44:11', 1),
(115, 'PS', 'Палестина', 'img/flags-normal/PS.PNG', NULL, 'Palestinian Territory', 'Palestinian Territory', NULL, '2018-10-01 22:44:11', 1),
(116, 'IS', 'Исландия', 'img/flags-normal/IS.PNG', NULL, 'Iceland', 'Iceland', NULL, '2018-10-01 22:44:11', 1),
(117, 'CY', 'Кипр', 'img/flags-normal/CY.PNG', NULL, 'Cyprus', 'Cyprus', NULL, '2018-10-01 22:44:11', 1),
(118, 'HU', 'Венгрия', 'img/flags-normal/HU.PNG', NULL, 'Hungary', 'Hungary', NULL, '2018-10-01 22:44:11', 1),
(119, 'SK', 'Словакия', 'img/flags-normal/SK.PNG', NULL, 'Slovakia', 'Slovakia', NULL, '2018-10-01 22:44:11', 1),
(120, 'RS', 'Сербия', 'img/flags-normal/RS.PNG', NULL, 'Serbia', 'Serbia', NULL, '2018-10-01 22:44:11', 1),
(121, 'BG', 'Болгария', 'img/flags-normal/BG.PNG', NULL, 'Bulgaria', 'Bulgaria', NULL, '2018-10-01 22:44:11', 1),
(122, 'OM', 'Оман', 'img/flags-normal/OM.PNG', NULL, 'Oman', 'Oman', NULL, '2018-10-01 22:44:11', 1),
(123, 'RO', 'Румыния', 'img/flags-normal/RO.PNG', NULL, 'Romania', 'Romania', NULL, '2018-10-01 22:44:11', 1),
(124, 'GE', 'Грузия', 'img/flags-normal/GE.PNG', NULL, 'Georgia', 'Georgia', NULL, '2018-10-01 22:44:11', 1),
(125, 'NO', 'Норвегия', 'img/flags-normal/NO.PNG', NULL, 'Norway', 'Norway', NULL, '2018-10-01 22:44:11', 1),
(126, 'AM', 'Армения', 'img/flags-normal/AM.PNG', NULL, 'Armenia', 'Armenia', NULL, '2018-10-01 22:44:11', 1),
(127, 'AT', 'Австрия', 'img/flags-normal/AT.PNG', NULL, 'Austria', 'Austria', NULL, '2018-10-01 22:44:11', 1),
(128, 'AL', 'Албания', 'img/flags-normal/AL.PNG', NULL, 'Albania', 'Albania', NULL, '2018-10-01 22:44:11', 1),
(129, 'SI', 'Словения', 'img/flags-normal/SI.PNG', NULL, 'Slovenia', 'Slovenia', NULL, '2018-10-01 22:44:11', 1),
(130, 'PA', 'Панама', 'img/flags-normal/PA.PNG', NULL, 'Panama', 'Panama', NULL, '2018-10-01 22:44:11', 1),
(131, 'BN', 'Бруней', 'img/flags-normal/BN.PNG', NULL, 'Brunei Darussalam', 'Brunei Darussalam', NULL, '2018-10-01 22:44:11', 1),
(132, 'LK', 'Шри-Ланка', 'img/flags-normal/LK.PNG', NULL, 'Sri Lanka', 'Sri Lanka', NULL, '2018-10-01 22:44:11', 1),
(133, 'ME', 'Черногория', 'img/flags-normal/ME.PNG', NULL, 'Montenegro', 'Montenegro', NULL, '2018-10-01 22:44:11', 1),
(134, 'EU', 'Европейский Союз', 'img/flags-normal/EU.PNG', NULL, 'Europe', 'Europe', NULL, '2018-10-01 22:44:11', 1),
(135, 'TJ', 'Таджикистан', 'img/flags-normal/TJ.PNG', NULL, 'Tajikistan', 'Tajikistan', NULL, '2018-10-01 22:44:11', 1),
(136, 'IQ', 'Ирак', 'img/flags-normal/IQ.PNG', NULL, 'Iraq', 'Iraq', NULL, '2018-10-01 22:44:11', 1),
(137, 'LB', 'Ливан', 'img/flags-normal/LB.PNG', NULL, 'Lebanon', 'Lebanon', NULL, '2018-10-01 22:44:11', 1),
(138, 'MD', 'Молдова', 'img/flags-normal/MD.PNG', NULL, 'Moldova', 'Moldova', NULL, '2018-10-01 22:44:11', 1),
(139, 'FI', 'Финляндия', 'img/flags-normal/FI.PNG', NULL, 'Finland', 'Finland', NULL, '2018-10-01 22:44:11', 1),
(140, 'EE', 'Эстония', 'img/flags-normal/EE.PNG', NULL, 'Estonia', 'Estonia', NULL, '2018-10-01 22:44:11', 1),
(141, 'BA', 'Босния и Герцеговина', 'img/flags-normal/BA.PNG', NULL, 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', NULL, '2018-10-01 22:44:11', 1),
(142, 'KW', 'Кувейт', 'img/flags-normal/KW.PNG', NULL, 'Kuwait', 'Kuwait', NULL, '2018-10-01 22:44:11', 1),
(143, 'AX', 'Аландские острова', 'img/flags-normal/AX.PNG', NULL, 'Aland Islands', 'Aland Islands', NULL, '2018-10-01 22:44:11', 1),
(144, 'LT', 'Литва', 'img/flags-normal/LT.PNG', NULL, 'Lithuania', 'Lithuania', NULL, '2018-10-01 22:44:11', 1),
(145, 'LU', 'Люксембург', 'img/flags-normal/LU.PNG', NULL, 'Luxembourg', 'Luxembourg', NULL, '2018-10-01 22:44:11', 1),
(146, 'AG', 'Антигуа и Барбуда', 'img/flags-normal/AG.PNG', NULL, 'Antigua and Barbuda', 'Antigua and Barbuda', NULL, '2018-10-01 22:44:11', 1),
(147, 'MK', 'Македония', 'img/flags-normal/MK.PNG', NULL, 'Macedonia', 'Macedonia', NULL, '2018-10-01 22:44:11', 1),
(148, 'SM', 'Сан-Марино', 'img/flags-normal/SM.PNG', NULL, 'San Marino', 'San Marino', NULL, '2018-10-01 22:44:11', 1),
(149, 'MT', 'Мальта', 'img/flags-normal/MT.PNG', NULL, 'Malta', 'Malta', NULL, '2018-10-01 22:44:11', 1),
(150, 'FK', 'Фолклендские острова', 'img/flags-normal/FK.PNG', NULL, 'Falkland Islands', 'Falkland Islands', NULL, '2018-10-01 22:44:11', 1),
(151, 'BH', 'Бахрейн', 'img/flags-normal/BH.PNG', NULL, 'Bahrain', 'Bahrain', NULL, '2018-10-01 22:44:11', 1),
(152, 'UZ', 'Узбекистан', 'img/flags-normal/UZ.PNG', NULL, 'Uzbekistan', 'Uzbekistan', NULL, '2018-10-01 22:44:11', 1),
(153, 'AZ', 'Азербайджан', 'img/flags-normal/AZ.PNG', NULL, 'Azerbaijan', 'Azerbaijan', NULL, '2018-10-01 22:44:11', 1),
(154, 'MC', 'Монако', 'img/flags-normal/MC.PNG', NULL, 'Monaco', 'Monaco', NULL, '2018-10-01 22:44:11', 1),
(155, 'HT', 'Гаити', 'img/flags-normal/HT.PNG', NULL, 'Haiti', 'Haiti', NULL, '2018-10-01 22:44:11', 1),
(156, 'GU', 'Гуам', 'img/flags-normal/GU.PNG', NULL, 'Guam', 'Guam', NULL, '2018-10-01 22:44:11', 1),
(157, 'JM', 'Ямайка', 'img/flags-normal/JM.PNG', NULL, 'Jamaica', 'Jamaica', NULL, '2018-10-01 22:44:11', 1),
(158, 'UM', 'Внешние малые острова США', 'img/flags-normal/UM.PNG', NULL, 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', NULL, '2018-10-01 22:44:11', 1),
(159, 'FM', 'Микронезия', 'img/flags-normal/FM.PNG', NULL, 'Micronesia', 'Micronesia', NULL, '2018-10-01 22:44:11', 1),
(160, 'EC', 'Эквадор', 'img/flags-normal/EC.PNG', NULL, 'Ecuador', 'Ecuador', NULL, '2018-10-01 22:44:11', 1),
(161, 'PE', 'Перу', 'img/flags-normal/PE.PNG', NULL, 'Peru', 'Peru', NULL, '2018-10-01 22:44:11', 1),
(162, 'KY', 'Каймановы острова', 'img/flags-normal/KY.PNG', NULL, 'Cayman Islands', 'Cayman Islands', NULL, '2018-10-01 22:44:11', 1),
(163, 'CO', 'Колумбия', 'img/flags-normal/CO.PNG', NULL, 'Colombia', 'Colombia', NULL, '2018-10-01 22:44:11', 1),
(164, 'HN', 'Гондурас', 'img/flags-normal/HN.PNG', NULL, 'Honduras', 'Honduras', NULL, '2018-10-01 22:44:11', 1),
(165, 'AN', 'Антильские острова', 'img/flags-normal/AN.PNG', NULL, 'Netherlands Antilles', 'Netherlands Antilles', NULL, '2018-10-01 22:44:11', 1),
(166, 'YE', 'Йемен', 'img/flags-normal/YE.PNG', NULL, 'Yemen', 'Yemen', NULL, '2018-10-01 22:44:11', 1),
(167, 'VG', 'Британские Виргинские острова', 'img/flags-normal/VG.PNG', NULL, 'Virgin Islands, British', 'Virgin Islands, British', NULL, '2018-10-01 22:44:11', 1),
(168, 'SY', 'Сирия', 'img/flags-normal/SY.PNG', NULL, 'Syria', 'Syria', NULL, '2018-10-01 22:44:11', 1),
(169, 'NI', 'Никарагуа', 'img/flags-normal/NI.PNG', NULL, 'Nicaragua', 'Nicaragua', NULL, '2018-10-01 22:44:11', 1),
(170, 'DO', 'Доминиканская республика', 'img/flags-normal/DO.PNG', NULL, 'Dominican Republic', 'Dominican Republic', NULL, '2018-10-01 22:44:11', 1),
(171, 'GD', 'Гренада', 'img/flags-normal/GD.PNG', NULL, 'Grenada', 'Grenada', NULL, '2018-10-01 22:44:11', 1),
(172, 'GT', 'Гватемала', 'img/flags-normal/GT.PNG', NULL, 'Guatemala', 'Guatemala', NULL, '2018-10-01 22:44:11', 1),
(173, 'CR', 'Коста-Рика', 'img/flags-normal/CR.PNG', NULL, 'Costa Rica', 'Costa Rica', NULL, '2018-10-01 22:44:11', 1),
(174, 'SV', 'Сальвадор', 'img/flags-normal/SV.PNG', NULL, 'El Salvador', 'El Salvador', NULL, '2018-10-01 22:44:11', 1),
(175, 'VE', 'Венесуэла', 'img/flags-normal/VE.PNG', NULL, 'Venezuela', 'Venezuela', NULL, '2018-10-01 22:44:11', 1),
(176, 'BB', 'Барбадос', 'img/flags-normal/BB.PNG', NULL, 'Barbados', 'Barbados', NULL, '2018-10-01 22:44:11', 1),
(177, 'TT', 'Тринидад и Тобаго', 'img/flags-normal/TT.PNG', NULL, 'Trinidad and Tobago', 'Trinidad and Tobago', NULL, '2018-10-01 22:44:11', 1),
(178, 'BV', 'Буве', 'img/flags-normal/BV.PNG', NULL, 'Bouvet Island', 'Bouvet Island', NULL, '2018-10-01 22:44:11', 1),
(179, 'MH', 'Маршалловы острова', 'img/flags-normal/MH.PNG', NULL, 'Marshall Islands', 'Marshall Islands', NULL, '2018-10-01 22:44:11', 1),
(180, 'CK', 'Острова Кука', 'img/flags-normal/CK.PNG', NULL, 'Cook Islands', 'Cook Islands', NULL, '2018-10-01 22:44:11', 1),
(181, 'GI', 'Гибралтар', 'img/flags-normal/GI.PNG', NULL, 'Gibraltar', 'Gibraltar', NULL, '2018-10-01 22:44:11', 1),
(182, 'PY', 'Парагвай', 'img/flags-normal/PY.PNG', NULL, 'Paraguay', 'Paraguay', NULL, '2018-10-01 22:44:11', 1),
(184, 'WS', 'Самоа', 'img/flags-normal/WS.PNG', NULL, 'Samoa', 'Samoa', NULL, '2018-10-01 22:44:11', 1),
(185, 'KN', 'Сент Китс и Невис', 'img/flags-normal/KN.PNG', NULL, 'Saint Kitts and Nevis', 'Saint Kitts and Nevis', NULL, '2018-10-01 22:44:11', 1),
(186, 'FJ', 'Фиджи', 'img/flags-normal/FJ.PNG', NULL, 'Fiji', 'Fiji', NULL, '2018-10-01 22:44:11', 1),
(187, 'UY', 'Уругвай', 'img/flags-normal/UY.PNG', NULL, 'Uruguay', 'Uruguay', NULL, '2018-10-01 22:44:11', 1),
(188, 'MP', 'Северные Марианские острова', 'img/flags-normal/MP.PNG', NULL, 'Northern Mariana Islands', 'Northern Mariana Islands', NULL, '2018-10-01 22:44:11', 1),
(189, 'PW', 'Палау', 'img/flags-normal/PW.PNG', NULL, 'Palau', 'Palau', NULL, '2018-10-01 22:44:11', 1),
(190, 'QA', 'Катар', 'img/flags-normal/QA.PNG', NULL, 'Qatar', 'Qatar', NULL, '2018-10-01 22:44:11', 1),
(191, 'JO', 'Иордания', 'img/flags-normal/JO.PNG', NULL, 'Jordan', 'Jordan', NULL, '2018-10-01 22:44:11', 1),
(192, 'AS', 'Американское Самоа', 'img/flags-normal/AS.PNG', NULL, 'American Samoa', 'American Samoa', NULL, '2018-10-01 22:44:11', 1),
(193, 'TC', 'Туркс и Кейкос', 'img/flags-normal/TC.PNG', NULL, 'Turks and Caicos Islands', 'Turks and Caicos Islands', NULL, '2018-10-01 22:44:11', 1),
(194, 'LC', 'Святая Люсия', 'img/flags-normal/LC.PNG', NULL, 'Saint Lucia', 'Saint Lucia', NULL, '2018-10-01 22:44:11', 1),
(195, 'MN', 'Монголия', 'img/flags-normal/MN.PNG', NULL, 'Mongolia', 'Mongolia', NULL, '2018-10-01 22:44:11', 1),
(196, 'VA', 'Ватикан', 'img/flags-normal/VA.PNG', NULL, 'Holy See', 'Holy See', NULL, '2018-10-01 22:44:11', 1),
(197, 'AW', 'Арулько', 'img/flags-normal/AW.PNG', NULL, 'Aruba', 'Aruba', NULL, '2018-10-01 22:44:11', 1),
(198, 'GY', 'Гайана', 'img/flags-normal/GY.PNG', NULL, 'Guyana', 'Guyana', NULL, '2018-10-01 22:44:11', 1),
(199, 'SR', 'Суринам', 'img/flags-normal/SR.PNG', NULL, 'Suriname', 'Suriname', NULL, '2018-10-01 22:44:11', 1),
(200, 'IM', 'Остров Мэн', 'img/flags-normal/IM.PNG', NULL, 'Isle of Man', 'Isle of Man', NULL, '2018-10-01 22:44:11', 1),
(201, 'VU', 'Вануату', 'img/flags-normal/VU.PNG', NULL, 'Vanuatu', 'Vanuatu', NULL, '2018-10-01 22:44:11', 1),
(202, 'HR', 'Хорватия', 'img/flags-normal/HR.PNG', NULL, 'Croatia', 'Croatia', NULL, '2018-10-01 22:44:11', 1),
(203, 'AI', 'Ангуилья', 'img/flags-normal/AI.PNG', NULL, 'Anguilla', 'Anguilla', NULL, '2018-10-01 22:44:11', 1),
(204, 'PM', 'Сен-Пьер и Микелон', 'img/flags-normal/PM.PNG', NULL, 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', NULL, '2018-10-01 22:44:11', 1),
(205, 'GP', 'Гваделупа', 'img/flags-normal/GP.PNG', NULL, 'Guadeloupe', 'Guadeloupe', NULL, '2018-10-01 22:44:11', 1),
(206, 'MF', 'Сен-Мартен', 'img/flags-normal/MF.PNG', NULL, 'Saint Martin', 'Saint Martin', NULL, '2018-10-01 22:44:11', 1),
(207, 'GG', 'Гернси', 'img/flags-normal/GG.PNG', NULL, 'Guernsey', 'Guernsey', NULL, '2018-10-01 22:44:11', 1),
(208, 'BI', 'Бурунди', 'img/flags-normal/BI.PNG', NULL, 'Burundi', 'Burundi', NULL, '2018-10-01 22:44:11', 1),
(209, 'TM', 'Туркменистан', 'img/flags-normal/TM.PNG', NULL, 'Turkmenistan', 'Turkmenistan', NULL, '2018-10-01 22:44:11', 1),
(210, 'KG', 'Кыргызстан', 'img/flags-normal/KG.PNG', NULL, 'Kyrgyzstan', 'Kyrgyzstan', NULL, '2018-10-01 22:44:11', 1),
(211, 'MM', 'Мьянма', 'img/flags-normal/MM.PNG', NULL, 'Myanmar', 'Myanmar', NULL, '2018-10-01 22:44:11', 1),
(212, 'BT', 'Бутан', 'img/flags-normal/BT.PNG', NULL, 'Bhutan', 'Bhutan', NULL, '2018-10-01 22:44:11', 1),
(213, 'LI', 'Лихтенштейн', 'img/flags-normal/LI.PNG', NULL, 'Liechtenstein', 'Liechtenstein', NULL, '2018-10-01 22:44:11', 1),
(214, 'FO', 'Фарерские острова', 'img/flags-normal/FO.PNG', NULL, 'Faroe Islands', 'Faroe Islands', NULL, '2018-10-01 22:44:11', 1),
(215, 'ET', 'Эфиопия', 'img/flags-normal/ET.PNG', NULL, 'Ethiopia', 'Ethiopia', NULL, '2018-10-01 22:44:11', 1),
(216, 'MQ', 'Мартиника', 'img/flags-normal/MQ.PNG', NULL, 'Martinique', 'Martinique', NULL, '2018-10-01 22:44:11', 1),
(217, 'JE', 'Джерси', 'img/flags-normal/JE.PNG', NULL, 'Jersey', 'Jersey', NULL, '2018-10-01 22:44:11', 1),
(218, 'AD', 'Андорра', 'img/flags-normal/AD.PNG', NULL, 'Andorra', 'Andorra', NULL, '2018-10-01 22:44:11', 1),
(219, 'AQ', 'Антарктида', 'img/flags-normal/AQ.PNG', NULL, 'Antarctica', 'Antarctica', NULL, '2018-10-01 22:44:11', 1),
(220, 'IO', 'Британская территория в Индийском океане', 'img/flags-normal/IO.PNG', NULL, 'British Indian Ocean Territory', 'British Indian Ocean Territory', NULL, '2018-10-01 22:44:11', 1),
(221, 'GL', 'Гренландия', 'img/flags-normal/GL.PNG', NULL, 'Greenland', 'Greenland', NULL, '2018-10-01 22:44:11', 1),
(222, 'GW', 'Гвинея-Бисау', 'img/flags-normal/GW.PNG', NULL, 'Guinea-Bissau', 'Guinea-Bissau', NULL, '2018-10-01 22:44:11', 1),
(223, 'ER', 'Эритрея', 'img/flags-normal/ER.PNG', NULL, 'Eritrea', 'Eritrea', NULL, '2018-10-01 22:44:11', 1),
(224, 'WF', 'Уоллис и Футуна', 'img/flags-normal/WF.PNG', NULL, 'Wallis and Futuna', 'Wallis and Futuna', NULL, '2018-10-01 22:44:11', 1),
(225, 'PF', 'Французская Полинезия', 'img/flags-normal/PF.PNG', NULL, 'French Polynesia', 'French Polynesia', NULL, '2018-10-01 22:44:11', 1),
(226, 'CU', 'Куба', 'img/flags-normal/CU.PNG', NULL, 'Cuba', 'Cuba', NULL, '2018-10-01 22:44:11', 1),
(227, 'TO', 'Тонга', 'img/flags-normal/TO.PNG', NULL, 'Tonga', 'Tonga', NULL, '2018-10-01 22:44:11', 1),
(228, 'TL', 'Восточный Тимор', 'img/flags-normal/TL.PNG', NULL, 'Timor-Leste', 'Timor-Leste', NULL, '2018-10-01 22:44:11', 1),
(229, 'ST', 'Сан-Томе и Принсипи', 'img/flags-normal/ST.PNG', NULL, 'Sao Tome and Principe', 'Sao Tome and Principe', NULL, '2018-10-01 22:44:11', 1),
(230, 'GF', 'Французская Гвинея', 'img/flags-normal/GF.PNG', NULL, 'French Guiana', 'French Guiana', NULL, '2018-10-01 22:44:11', 1),
(231, 'SB', 'Соломоновы острова', 'img/flags-normal/SB.PNG', NULL, 'Solomon Islands', 'Solomon Islands', NULL, '2018-10-01 22:44:11', 1),
(232, 'TV', 'Тувалу', 'img/flags-normal/TV.PNG', NULL, 'Tuvalu', 'Tuvalu', NULL, '2018-10-01 22:44:11', 1),
(233, 'KI', 'Кирибати', 'img/flags-normal/KI.PNG', NULL, 'Kiribati', 'Kiribati', NULL, '2018-10-01 22:44:11', 1),
(234, 'NU', 'Ниуэ', 'img/flags-normal/NU.PNG', NULL, 'Niue', 'Niue', NULL, '2018-10-01 22:44:11', 1),
(235, 'NF', 'Норфолк', 'img/flags-normal/NF.PNG', NULL, 'Norfolk Island', 'Norfolk Island', NULL, '2018-10-01 22:44:11', 1),
(236, 'NR', 'Науру', 'img/flags-normal/NR.PNG', NULL, 'Nauru', 'Nauru', NULL, '2018-10-01 22:44:11', 1),
(237, 'YT', 'Майотта', 'img/flags-normal/YT.PNG', NULL, 'Mayotte', 'Mayotte', NULL, '2018-10-01 22:44:11', 1),
(238, 'PN', 'Питкэрн', 'img/flags-normal/PN.PNG', NULL, 'Pitcairn Islands', 'Pitcairn Islands', NULL, '2018-10-01 22:44:11', 1),
(239, 'CI', 'Кот-д\'Ивуар', 'img/flags-normal/CI.PNG', NULL, 'Cote D\'Ivoire', 'Cote D\'Ivoire', NULL, '2018-10-01 22:44:11', 1),
(240, 'LA', 'Лаос', 'img/flags-normal/LA.PNG', NULL, 'Lao', 'Lao', NULL, '2018-10-01 22:44:11', 1),
(241, 'KP', 'Корейская Народно-Демократическая Республика', 'img/flags-normal/KP.PNG', NULL, 'Democratic People\'s Republic of Korea', 'Democratic People\'s Republic of Korea', NULL, '2018-10-01 22:44:11', 1),
(242, 'SJ', 'Свальбард и Ян-Майен', 'img/flags-normal/SJ.PNG', NULL, 'Svalbard and Jan Mayen', 'Svalbard and Jan Mayen', NULL, '2018-10-01 22:44:11', 1),
(243, 'SH', 'Остров Святой Елены', 'img/flags-normal/SH.PNG', NULL, 'Saint Helena', 'Saint Helena', NULL, '2018-10-01 22:44:11', 1),
(244, 'CC', 'Кокосовые острова', 'img/flags-normal/CC.PNG', NULL, 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', NULL, '2018-10-01 22:44:11', 1),
(245, 'EH', 'Западная Сахара', 'img/flags-normal/EH.PNG', NULL, 'Western Sahara', 'Western Sahara', NULL, '2018-10-01 22:44:11', 1),
(246, 'AU', 'Австралия', 'img/flags-normal/AU.PNG', NULL, 'Australia', 'Australia', NULL, '2018-10-01 22:44:11', 1),
(247, 'SS', 'Южный Судан', 'img/flags-normal/SS.PNG', NULL, 'South Sudan', 'South Sudan', NULL, '2018-10-01 22:44:11', 1);

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
  `country_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `manager_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `country_location_from` int(10) NOT NULL DEFAULT '1',
  `country_location_to` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `deals`
--

INSERT INTO `deals` (`id`, `id_bitrix`, `deal_status`, `deal_number`, `deal_title`, `deal_location_from`, `deal_location_to`, `deal_location_across`, `deal_delivery_date`, `deal_loading_date`, `deal_transport_type`, `deal_cargo_params`, `deal_special_conditions`, `created_at`, `updated_at`, `country_id`, `manager_id`, `country_location_from`, `country_location_to`) VALUES
(548, 7438, 'Новая - Да', '7438', ' Из Гомель Беларусь - В Зеленодольск Россия', '113', '1', '', '05.10.18', '01.10.18', NULL, 'Стекло в ящиках/82/82', 'Верхняя погрузка', '2018-10-02 08:41:33', '2018-10-02 08:41:33', 1, 1, 1, 1),
(549, 7437, 'Новая - Да', '7437', ' Из Волгоград Россия - В Колодищи Беларусь', '1', '113', '', '08.10.18', '05.10.18', 'Чистая автоцистерна', 'Хлорпарафин ХП470/30/30', 'Наличие ДОПОГ ', '2018-10-02 08:41:33', '2018-10-02 08:41:33', 1, 1, 1, 1),
(550, 7436, 'Новая - Да', '7436', ' Из Киев Украина - В Вильнюс Литва', '112', '144', '', '03.10.18', '01.10.18', NULL, 'пиво/82/82', 'режим не ниже +2', '2018-10-02 08:41:33', '2018-10-02 08:41:33', 1, 1, 1, 1),
(551, 7434, 'Новая - Да', '7434', ' Из Минск Беларусь - В Софьино Россия', '113', '1', '', '28.09.18', '28.09.18', NULL, 'Пиво/82/82', 'Задняя погрузка', '2018-10-02 08:41:33', '2018-10-02 08:41:33', 1, 1, 1, 1),
(552, 7433, 'Новая - Да', '7433', ' Из Глубокое Беларусь - В Харьков Украина', '113', '112', '', '08.10.18', '03.10.18', NULL, 'консервы молочные/82/82', 'без терморежима', '2018-10-02 08:41:33', '2018-10-02 08:41:33', 1, 1, 1, 1),
(553, 7432, 'Новая - Да', '7432', ' Из Кстово Россия - В Минск Беларусь', '1', '113', '', '01.10.18', '28.09.18', NULL, 'Смола ПВХ/82/82', 'Погрузка задняя, Пустая машина не должна весить более 17т!!! ', '2018-10-02 08:41:33', '2018-10-02 08:41:33', 1, 1, 1, 1),
(554, 7429, 'Новая - Да', '7429', ' Из Выкса Россия - В Минск Беларусь', '1', '113', '', '28.09.18', '27.09.18', NULL, 'металл/0/0', 'металл', '2018-10-02 08:41:33', '2018-10-02 08:41:33', 1, 1, 1, 1),
(555, 7427, 'Новая - Да', '7427', ' Из Липецк Россия - В Молодечно Беларусь', '1', '113', '', '05.09.18', '01.10.18', NULL, 'Металопрокат в рулонах/82/82', 'Верхняя погрузка', '2018-10-02 08:41:33', '2018-10-02 08:41:33', 1, 1, 1, 1),
(556, 7426, 'Новая - Да', '7426', ' Из Тула Россия - В Минск Беларусь', '1', '113', '', '28.09.18', '26.09.18', NULL, 'Блоки керамические/82/82', 'Погрузка боковая, выгрузка верхняя', '2018-10-02 08:41:33', '2018-10-02 08:41:33', 1, 1, 1, 1),
(557, 7425, 'Новая - Да', '7425', ' Из Екатеринбург Россия - В Минск Беларусь', '1', '113', '', '27.09.18', '25.09.18', 'Чистая автоцистерна, гумированная или стеклопластиковая цистерна для агрессивных жидкостей', 'Алюминий хлорид диоксид АДР 8,3 ООН 3264/30000/30000', 'верхняя погрузка', '2018-10-02 08:41:33', '2018-10-02 08:41:33', 1, 1, 1, 1),
(558, 7424, 'Новая - Да', '7424', ' Из Дзержинск Россия - В Новополоцк Беларусь', '1', '113', '', '27.09.18', '25.09.18', 'Чистая автоцистерна с подогревом', 'Присадка, АДР 9 ООН - 3082/19.64/19.64', 'Чистая автоцистерна', '2018-10-02 08:41:33', '2018-10-02 08:41:33', 1, 1, 1, 1),
(559, 7423, 'Новая - Да', '7423', ' Из Казань Россия - В Минск Беларусь', '1', '113', '', '27.09.18', '25.09.18', NULL, 'Моноэтиленгликоль плотность 1,12/19.64/19.64', 'Чистая автоцистерна', '2018-10-02 08:41:33', '2018-10-02 08:41:33', 1, 1, 1, 1),
(560, 7422, 'Новая - Да', '7422', ' Из Казань Россия - В Минск Беларусь', '1', '113', '', '27.09.18', '25.09.18', NULL, 'Моноэтиленгликоль плотность 1,12/19.64/19.64', 'Чистая автоцистерна', '2018-10-02 08:41:33', '2018-10-02 08:41:33', 1, 1, 1, 1),
(561, 7418, 'Новая - Да', '7418', ' Из Гусь-Хрустальный Россия - В Брест Беларусь', '1', '113', '', '23.09.18', '20.09.18', NULL, 'Бутылки на паллетах/82/82', 'хрупкий груз', '2018-10-02 08:41:33', '2018-10-02 08:41:33', 1, 1, 1, 1),
(562, 7414, 'Новая - Да', '7414', ' Из Казань Россия - В Борисов Беларусь', '1', '113', '', '08.10.18', '04.10.18', NULL, 'Дрожи в мешках навалом по 40 кг/82/82', 'задняя погрузка', '2018-10-02 08:41:33', '2018-10-02 08:41:33', 1, 1, 1, 1);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=563;

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
