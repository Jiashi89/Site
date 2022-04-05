-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Мар 31 2022 г., 18:29
-- Версия сервера: 5.5.68-MariaDB
-- Версия PHP: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `base`
--

-- --------------------------------------------------------

--
-- Структура таблицы `maintexts`
--

CREATE TABLE `maintexts` (
  `id` int(11) NOT NULL,
  `name` tinytext CHARACTER SET utf8 NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` enum('ru','en') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ru',
  `showhide` enum('show','hide') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'show',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `maintexts`
--

INSERT INTO `maintexts` (`id`, `name`, `body`, `url`, `lang`, `showhide`, `created_at`, `updated_at`) VALUES
(1, 'О компании', 'О компании\r\n\r\n \r\n\r\nA1 (Унитарное предприятие по оказанию услуг «А1») – провайдер телекоммуникационных, ИКТ- и контент-услуг в Беларуси. Коммерческую деятельность компания начала 16 апреля 1999 г., став первым мобильным оператором стандарта GSM в стране. С ноября 2007 г. входит в состав международной группы A1 Telekom Austria Group, являющейся европейским подразделением транснационального холдинга América Móvil, одного из крупнейших мировых провайдеров беспроводных услуг. До августа 2019 г. компания вела операционную деятельность под брендом velcom.\r\n\r\n \r\n\r\nАбонентами мобильной связи A1 в Беларуси являются более 4,9 миллионов человек, свыше 1,1 млн домохозяйств имеют возможность доступа к сети фиксированной связи по технологиям GPON и Ethernet в областных городах и крупнейших районных центрах. Кроме того, A1 предоставляет услуги цифрового телевидения IPTV под брендом VOKA, а также услуги хранения данных и облачные сервисы на базе собственного дата-центра, одного из крупнейших в стране. В компании работают около 2700 человек, а фирменные центры продаж и обслуживания расположены во всех крупных населенных пунктах страны.', 'about', 'ru', 'show', '2022-03-29 15:22:28', '2022-03-29 18:22:09'),
(2, 'Услуги', '\r\nВыезд мастера - Бесплатно\r\nДиагностика неисправностей - Бесплатно\r\nДоставка курьером - Бесплатно\r\nПроблемы с включением - Уточнить\r\nУстановка Windows - от 15 руб.\r\nУскорение и оптимизация - Уточнить\r\nЧерный экран при включении - Уточнить\r\nЧистка от пыли - от 16 руб.\r\nЛечение и удаление вирусов - от 10 руб.\r\nЗамена матрицы/экрана - 20 руб.\r\nЗалитие водой - от 63 руб.\r\nЗамена жесткого диска  -от 20 руб.\r\nУстановка программ- от 11 руб.\r\nНастройка Интернета - от 16 руб.\r\nНастройка Wi-Fi - Уточнить\r\nЗамена клавиатуры - от 16 руб. + деталь\r\nВосстановление данных - от 15 руб.\r\nУстановка антивируса - от 13 руб.\r\nЗамена петель - Уточнить\r\nЗамена видеокарты - от 53 руб. + деталь\r\nРемонт материнской платы - от 27 руб.\r\nЗамена зарядного устройства - Уточнить\r\nРемонт корпуса - от 15 руб.\r\n', 'services', 'ru', 'show', '2022-03-31 10:02:39', '2022-03-31 13:02:18'),
(3, 'Товары', 'Наименование товаров', 'products ', 'ru', 'show', '2022-03-31 10:04:39', '2022-03-31 13:04:04'),
(4, 'Вакансии', 'Ваш опыт и талант найдут свое место в А1.\r\n\r\nВыберите вакансию по душе!\r\n\r\n    Информационные технологии, телеком.\r\n    Бухгалтерия, финансы.\r\n    Закупки, продажи, логистика.\r\n    Маркетинг, реклама, PR.\r\n    Управление персоналом.\r\n    Административный персонал.\r\n    Другое.\r\n\r\nВнутри А1 вы можете пробовать себя в разных ролях и должностях. Так наши сотрудники занимаются именно тем, что им нравится, постоянно профессионально развиваются и занимают интересные позиции.', 'jobs ', 'ru', 'show', '2022-03-31 10:05:33', '2022-03-31 13:04:50');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` tinytext CHARACTER SET utf8 NOT NULL,
  `email` tinytext CHARACTER SET utf8 NOT NULL,
  `pass` tinytext CHARACTER SET utf8 NOT NULL,
  `last_visit` datetime NOT NULL,
  `block_unblock` enum('unblock','block') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unblock',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `maintexts`
--
ALTER TABLE `maintexts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `maintexts`
--
ALTER TABLE `maintexts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
