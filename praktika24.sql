-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 25 2023 г., 14:10
-- Версия сервера: 10.4.22-MariaDB
-- Версия PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `praktika24`
--

-- --------------------------------------------------------

--
-- Структура таблицы `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `city`
--

INSERT INTO `city` (`id`, `name`) VALUES
(1, 'Tallinn'),
(2, 'Tartu'),
(3, 'Narva'),
(4, 'Pärnu'),
(5, 'Kohtla-Järve'),
(6, 'Viljandi'),
(7, 'Rakvere'),
(8, 'Maardu'),
(9, 'Kuressaare'),
(10, 'Sillamäe'),
(11, 'Valga'),
(12, 'Võru'),
(13, 'Jõhvi'),
(14, 'Haapsalu'),
(15, 'Keila'),
(16, 'Paide'),
(17, 'Elva'),
(18, 'Saue'),
(19, 'Põlva'),
(20, 'Tapa'),
(21, 'Jõgeva'),
(22, 'Rapla'),
(23, 'Kiviõli'),
(24, 'Türi'),
(25, 'Põltsamaa'),
(26, 'Sindi'),
(27, 'Paldiski'),
(28, 'Kärdla'),
(29, 'Kunda'),
(30, 'Tõrva'),
(31, 'Narva-Jõesuu'),
(32, 'Kehra'),
(33, 'Loksa'),
(34, 'Räpina'),
(35, 'Otepää'),
(36, 'Tamsalu'),
(37, 'Kilingi-Nõmme'),
(38, 'Karksi-Nuia'),
(39, 'Antsla'),
(40, 'Võhma'),
(41, 'Mustvee'),
(42, 'Lihula'),
(43, 'Suure-Jaani'),
(44, 'Abja-Paluoja'),
(45, 'Püssi'),
(46, 'Mõisaküla'),
(47, 'Kallaste');

-- --------------------------------------------------------

--
-- Структура таблицы `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(155) NOT NULL,
  `cityId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `company`
--

INSERT INTO `company` (`id`, `name`, `email`, `address`, `cityId`) VALUES
(1, 'ATEA AS', 'jobs@atea.ee', 'Järvevana tee 7b, 10138 Tallinn', 1),
(2, 'Foxway OÜ', 'jobs.estonia@foxway.com', 'Killustiku Põik 1, Vahi, 60534 Tartu maakond', 2),
(3, 'Rademar OÜ', 'triinu.kaas@rademar.ee', 'Lai 11, Pärnu, 80010 Pärnu maakond', 4),
(4, 'Farmi Piimatööstus AS', 'personal@farmi.ee', 'Linda tänav 15, Jõhvi, 41536 Ida-Viru maakond', 13),
(5, 'AS Bestnet', 'kandideeri@tiki.ee', 'Rae 4, Paldiski, 76805 Harju maakond', 27),
(6, 'Swedbank AS', ' info@swedbank.ee', 'Liivalaia 8, 15040 Tallinn', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `company_industry`
--

CREATE TABLE `company_industry` (
  `id` int(11) NOT NULL,
  `companyId` int(11) NOT NULL,
  `industryId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `company_industry`
--

INSERT INTO `company_industry` (`id`, `companyId`, `industryId`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 3, 4),
(4, 4, 3),
(5, 5, 2),
(6, 6, 1),
(7, 6, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `employer_company`
--

CREATE TABLE `employer_company` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `companyId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `internshipId` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `rating` smallint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `industry`
--

CREATE TABLE `industry` (
  `id` int(11) NOT NULL,
  `name` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `industry`
--

INSERT INTO `industry` (`id`, `name`) VALUES
(1, 'Finance'),
(2, 'IT'),
(3, 'Production'),
(4, 'Retail Market');

-- --------------------------------------------------------

--
-- Структура таблицы `internship`
--

CREATE TABLE `internship` (
  `id` int(11) NOT NULL,
  `name` varchar(155) NOT NULL,
  `description` varchar(255) NOT NULL,
  `companyId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `industryId` int(11) NOT NULL,
  `cityId` int(11) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `payment` tinyint(4) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `internship`
--

INSERT INTO `internship` (`id`, `name`, `description`, `companyId`, `userId`, `industryId`, `cityId`, `startDate`, `endDate`, `payment`, `status`) VALUES
(1, 'BULKADMIN', 'Nothing', 6, 1, 1, 1, '2023-05-01', '2023-05-31', 1, 'active'),
(2, 'Front-end developer', 'Lorem ipsum?', 4, 4, 3, 5, '2022-10-04', '2023-07-20', 0, 'active');

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `internshipinfoview`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `internshipinfoview` (
`id` int(11)
,`title` varchar(155)
,`description` varchar(255)
,`avg_rating` decimal(9,4)
,`employer_name` varchar(101)
,`employer_email` varchar(255)
,`company_name` varchar(100)
,`city_name` varchar(100)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `internshiprequestcount`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `internshiprequestcount` (
`id` int(11)
,`name` varchar(155)
,`description` varchar(255)
,`pending_count` bigint(21)
,`accepted_count` bigint(21)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `studentresumeview`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `studentresumeview` (
`id` int(11)
,`student_name` varchar(101)
,`email` varchar(255)
,`has_resume` varchar(255)
);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `resume` varchar(255) DEFAULT NULL,
  `type` enum('student','employer') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `surname`, `email`, `username`, `password`, `resume`, `type`) VALUES
(1, 'Jelena', 'Kuzmina', 'jelena.kuzmina@ivkhk.ee', 'jelena228007', '12345', NULL, 'employer'),
(3, 'Maksim', 'Dzjubenko', 'maksim.dzjubenko@ivkhk.ee', 'mak7ilenin', '12345', '/private/resume/gfsigfn4554_23254.pdf', 'student'),
(4, 'Daniel', 'Monjane', 'mtalhead@ivkhk.ee', 'mtalhead', '12345', '/private/resume/kjdgndjkfghdgnkjdnojk.pdf', 'student'),
(5, 'Jegor', 'Golub', 'golubika@gmail.com', 'golub227', '12345', NULL, 'employer');

-- --------------------------------------------------------

--
-- Структура таблицы `user_internship`
--

CREATE TABLE `user_internship` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `internshipId` int(11) NOT NULL,
  `status` enum('pending','accepted','rejected') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `user_internship`
--

INSERT INTO `user_internship` (`id`, `userId`, `internshipId`, `status`) VALUES
(1, 3, 1, 'pending'),
(2, 3, 1, 'rejected'),
(3, 4, 1, 'accepted'),
(4, 3, 2, 'pending');

-- --------------------------------------------------------

--
-- Структура для представления `internshipinfoview`
--
DROP TABLE IF EXISTS `internshipinfoview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `internshipinfoview`  AS SELECT `i`.`id` AS `id`, `i`.`name` AS `title`, `i`.`description` AS `description`, ifnull((select avg(`feedback`.`rating`) from `feedback` group by `feedback`.`internshipId`),0) AS `avg_rating`, concat(`u`.`name`,' ',`u`.`surname`) AS `employer_name`, `u`.`email` AS `employer_email`, `co`.`name` AS `company_name`, `ci`.`name` AS `city_name` FROM (((`internship` `i` join `user` `u` on(`i`.`userId` = `u`.`id`)) join `city` `ci` on(`i`.`cityId` = `ci`.`id`)) join `company` `co` on(`i`.`companyId` = `co`.`id`)) WHERE `i`.`status` = 'active' AND `u`.`type` = 'employer' ;

-- --------------------------------------------------------

--
-- Структура для представления `internshiprequestcount`
--
DROP TABLE IF EXISTS `internshiprequestcount`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `internshiprequestcount`  AS SELECT `internship`.`id` AS `id`, `internship`.`name` AS `name`, `internship`.`description` AS `description`, (select count(`user_internship`.`status`) from `user_internship` where `user_internship`.`status` = 'pending' and `internship`.`id` = `user_internship`.`internshipId`) AS `pending_count`, (select count(`user_internship`.`status`) from `user_internship` where `user_internship`.`status` = 'accepted' and `internship`.`id` = `user_internship`.`internshipId`) AS `accepted_count` FROM `internship` GROUP BY `internship`.`id` ;

-- --------------------------------------------------------

--
-- Структура для представления `studentresumeview`
--
DROP TABLE IF EXISTS `studentresumeview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `studentresumeview`  AS SELECT `user`.`id` AS `id`, concat(`user`.`name`,' ',`user`.`surname`) AS `student_name`, `user`.`email` AS `email`, ifnull(`user`.`resume`,0) AS `has_resume` FROM `user` WHERE `user`.`type` = 'student' ;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_company_city` (`cityId`);

--
-- Индексы таблицы `company_industry`
--
ALTER TABLE `company_industry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_company_industry` (`companyId`),
  ADD KEY `fk_industry_company` (`industryId`);

--
-- Индексы таблицы `employer_company`
--
ALTER TABLE `employer_company`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_employer_company_user` (`userId`),
  ADD KEY `fk_employer_company_company` (`companyId`);

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_feedback_user` (`userId`),
  ADD KEY `fk_feedback_internship` (`internshipId`);

--
-- Индексы таблицы `industry`
--
ALTER TABLE `industry`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `internship`
--
ALTER TABLE `internship`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_internship_city` (`cityId`),
  ADD KEY `fk_internship_industry` (`industryId`),
  ADD KEY `fk_internship_company` (`companyId`),
  ADD KEY `fk_internship_employer` (`userId`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user_internship`
--
ALTER TABLE `user_internship`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_internship_user` (`userId`),
  ADD KEY `fk_user_internship_internship` (`internshipId`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT для таблицы `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `company_industry`
--
ALTER TABLE `company_industry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `employer_company`
--
ALTER TABLE `employer_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `industry`
--
ALTER TABLE `industry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `internship`
--
ALTER TABLE `internship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `user_internship`
--
ALTER TABLE `user_internship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `fk_company_city` FOREIGN KEY (`cityId`) REFERENCES `city` (`id`);

--
-- Ограничения внешнего ключа таблицы `company_industry`
--
ALTER TABLE `company_industry`
  ADD CONSTRAINT `fk_company_industry` FOREIGN KEY (`companyId`) REFERENCES `company` (`id`),
  ADD CONSTRAINT `fk_industry_company` FOREIGN KEY (`industryId`) REFERENCES `industry` (`id`);

--
-- Ограничения внешнего ключа таблицы `employer_company`
--
ALTER TABLE `employer_company`
  ADD CONSTRAINT `fk_employer_company_company` FOREIGN KEY (`companyId`) REFERENCES `company` (`id`),
  ADD CONSTRAINT `fk_employer_company_user` FOREIGN KEY (`userId`) REFERENCES `user` (`id`);

--
-- Ограничения внешнего ключа таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `fk_feedback_internship` FOREIGN KEY (`internshipId`) REFERENCES `internship` (`id`),
  ADD CONSTRAINT `fk_feedback_user` FOREIGN KEY (`userId`) REFERENCES `user` (`id`);

--
-- Ограничения внешнего ключа таблицы `internship`
--
ALTER TABLE `internship`
  ADD CONSTRAINT `fk_internship_city` FOREIGN KEY (`cityId`) REFERENCES `city` (`id`),
  ADD CONSTRAINT `fk_internship_company` FOREIGN KEY (`companyId`) REFERENCES `company` (`id`),
  ADD CONSTRAINT `fk_internship_employer` FOREIGN KEY (`userId`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `fk_internship_industry` FOREIGN KEY (`industryId`) REFERENCES `industry` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_internship`
--
ALTER TABLE `user_internship`
  ADD CONSTRAINT `fk_user_internship_internship` FOREIGN KEY (`internshipId`) REFERENCES `internship` (`id`),
  ADD CONSTRAINT `fk_user_internship_user` FOREIGN KEY (`userId`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
