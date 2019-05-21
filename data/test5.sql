-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 14 2018 г., 15:00
-- Версия сервера: 5.6.37
-- Версия PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test5`
--

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `idx` int(11) NOT NULL,
  `book` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`idx`, `book`) VALUES
(1, 'Книга 1'),
(2, 'Книга 2');

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `idx` int(11) NOT NULL,
  `category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`idx`, `category`) VALUES
(1, 'Политика'),
(2, 'Спорт');

-- --------------------------------------------------------

--
-- Структура таблицы `chat`
--

CREATE TABLE `chat` (
  `idx` int(11) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chat`
--

INSERT INTO `chat` (`idx`, `message`) VALUES
(1, 'Привет'),
(2, '555'),
(4, 'New');

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `id_feedback` int(11) NOT NULL,
  `feedback_user` text NOT NULL,
  `feedback_body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` (`id_feedback`, `feedback_user`, `feedback_body`) VALUES
(2, 'Олег1', 'Привет'),
(5, 'Admin', 'Все хорошо'),
(6, 'Олег', 'Все хорошо');

-- --------------------------------------------------------

--
-- Структура таблицы `galery`
--

CREATE TABLE `galery` (
  `idx` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Addres` text NOT NULL,
  `Size` int(11) NOT NULL,
  `Popularity` int(11) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `galery`
--

INSERT INTO `galery` (`idx`, `Name`, `Addres`, `Size`, `Popularity`, `data`) VALUES
(1, 'photo1', '1.jpg', 0, 7, '0000-00-00'),
(2, 'photo2', '2.jpg', 0, 8, '2018-03-06'),
(3, 'photo3', '3.jpg', 0, 22, '0000-00-00'),
(4, 'photo4', '4.jpg', 0, 1, '0000-00-00'),
(5, 'photo5', '5.jpg', 0, 75, '0000-00-00'),
(6, 'photo6', '6.jpg', 0, 7, '0000-00-00'),
(7, 'photo7', '7.jpg', 0, 105, '0000-00-00'),
(8, 'photo8', '8.jpg', 0, 12, '0000-00-00'),
(9, 'photo9', '9.jpg', 0, 82, '0000-00-00'),
(10, 'photo10', '10.jpg', 0, 240, '0000-00-00');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id_news` int(11) NOT NULL,
  `news_title` text NOT NULL,
  `news_preview` text NOT NULL,
  `news_content` text NOT NULL,
  `category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id_news`, `news_title`, `news_preview`, `news_content`, `category`) VALUES
(17, 'Сегодня будут награждать победителей областного конкурса «Спортивная Элита»', '9 агвуста в Томске на Воскресенской горе по адресу ул. Бакунина, 3 состоится награждение победителей областного конкурса «Спортивная элита-2018». ', '9 агвуста в Томске на Воскресенской горе по адресу ул. Бакунина, 3 состоится награждение победителей областного конкурса «Спортивная элита-2018». Среди победителей есть северчане: Шишмакова Анастасия, Качуркина Александра, Кислицын Павел, Блохин Сергей, Сороколетова Валерия, Паненков Максим, Анисимова Валерия, Мари Илла, Горбатых Алексей, Новокшонов Сергей, Бердников Аркадий, Вышегородцев Денис и Соловьева Юлия. ', 1),
(18, 'В Северске участились случаи мошенничества\r\n', 'К Вам поступает звонок на сотовый телефон, и представляются сотрудником сотового оператора (МТС, Билайн, Теле-2, Мегафон и.т.д). ', 'К Вам поступает звонок на сотовый телефон, и представляются сотрудником сотового оператора (МТС, Билайн, Теле-2, Мегафон и.т.д). Звонящий сообщает, что в связи с введением платного смс - информирования по Вашей банковской карте, у них есть специальное предложение, сделать эту услугу бесплатной и для активации данной услуги Вам необходимо продиктовать персональный код, который приходит Вам по СМС-сообщению. Вы диктуете полученный код и Ваши денежные средства, находящиеся на Вашем счету списываются МОШЕННИКАМ. Вероятнее всего МОШЕННИКАМ на момент звонка, известен номер Вашей банковской карты. ', 1),
(19, 'В городе состоялся легкоатлетический кросс среди сотрудников МЧС', 'Прибрежный парк Северска это излюбленное место тренировок профессиональных спортсменов, а также просто любителей здорового образа жизни всех возрастов.', 'Прибрежный парк Северска это излюбленное место тренировок профессиональных спортсменов, а также просто любителей здорового образа жизни всех возрастов. Здесь можно встретить бегунов от восьми до восьмидесяти лет. И именно здесь в начале августа под теплым, но уже не палящим солнцем традиционно состоялся легкоатлетический кросс среди подразделений ФГКУ «Специальное управление ФПС № 8 МЧС России», посвященный Году культуры безопасности МЧС России и 65-летию со дня образования ФГКУ «Специальное управление ФПС № 8 МЧС России». ', 2),
(20, 'Специальное предложение для строителей, отделочников и мастеров по ремонту!', 'Предлагаем вступить в клуб «Профи» и совершать закупки в супермаркетах', 'Предлагаем вступить в клуб «Профи» и совершать закупки в супермаркетах «Стройся» со скидкой 12% и получать 2% бонуса с каждой покупки! Оформите карту до 31 августа и получите в подарок 1000 бонусов! ', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `test`
--

CREATE TABLE `test` (
  `idx` int(11) NOT NULL,
  `passport` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `test`
--

INSERT INTO `test` (`idx`, `passport`) VALUES
(1, '1111'),
(2, '222');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`idx`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`idx`);

--
-- Индексы таблицы `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`idx`);

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id_feedback`);

--
-- Индексы таблицы `galery`
--
ALTER TABLE `galery`
  ADD PRIMARY KEY (`idx`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_news`);

--
-- Индексы таблицы `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`idx`),
  ADD UNIQUE KEY `passport` (`passport`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `chat`
--
ALTER TABLE `chat`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id_feedback` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `galery`
--
ALTER TABLE `galery`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id_news` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблицы `test`
--
ALTER TABLE `test`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
