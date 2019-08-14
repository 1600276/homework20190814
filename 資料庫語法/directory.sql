-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- 主機: localhost
-- 產生時間： 2019 年 08 月 14 日 17:28
-- 伺服器版本: 10.1.37-MariaDB
-- PHP 版本： 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `directory`
--

-- --------------------------------------------------------

--
-- 資料表結構 `announcements`
--

CREATE TABLE `announcements` (
  `announcementId` int(11) NOT NULL,
  `tag` varchar(64) DEFAULT NULL,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `announcements`
--

INSERT INTO `announcements` (`announcementId`, `tag`, `title`, `content`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(9, NULL, '酸柯P「這招」自毀聰明形象　他：明年是台灣最慘烈大選', '2020總統大選在即，藍綠兩黨人選底定，而台北市長柯文哲、鴻海創辦人郭台銘、前立法院長王金平近日遭傳有意合作結盟，郭台銘辦公室昨(12日)證實，三方不排除本週找機會互相溝通。對此，文化大學新聞系主任胡幼偉今(13日)在臉書斷言，「2020將成為台灣有史以來，最慘烈的一場總統大選！」 柯文哲日前宣布成立「台灣民眾黨」。對於何時與郭王見面，柯回應，「3個都是大忙人，也許給三方幕僚去安排個時間，這個要時間地點，談甚麼大家要先想一下」。對此，郭台銘辦公室也發聲明，「經過彼此電話聯繫後，不排除本週之內會找機會相互溝通了解一下。」 對此，胡幼偉在臉書發表看法。他指出「郭台銘看起來還是想選總統」，不過，若郭終究未與韓國瑜再見面長談1次，對郭而言，不是明智的決策模式。他認為，郭至少所有的利害關係人都應該談過1遍後，再做最後決定，才不會誤判情勢。胡幼偉猜測，郭如果決定參選，自認具正當性的理由，必然是，「想為國家做出貢獻」但殊不知這正是最沒道理的講法。而且，如果輸了，且輸的很難看，「他已做好心裡準備了嗎？」', '2019-08-14 01:51:39', 1, '2019-08-14 02:02:01', NULL),
(10, NULL, '中南部今晨密集閃電 吳德榮：全天慎防劇烈天氣', '中央大學大氣科學系兼任副教授吳德榮今天在「三立準氣象．老大洩天機」專欄表示，中央氣象局最新潛勢預測圖顯示，輕颱柯羅莎向北北西轉北，明天通過九州、四國、本州西南部一帶，有日本行程，得注意其對天氣的影響。\r\n\r\n至於柯羅莎到底有多大？他說，因為在海上，缺乏飛機實測資料，各國利用衛星資料估計：今晨2時中央氣象局估半徑才250公里；日本氣象廳估北半部600公里、南半部縮小為850公里(昨晚估1100公里)；美軍颱風聯合警報中心(JTWC)估東北象限425公里、東南象限380公里、西南象限296公里、西北象限407公里(南小北大、與日本相反)；各國估計的結果可謂南轅北轍。\r\n\r\n今晨中南部又有劇烈天氣(雷擊、強風及瞬間強降雨)發生，4時雷達合成圖顯示，中南部有較強回波，伴隨密集的閃電。南、高、屏有伴隨雷擊的局部強降雨發生。\r\n\r\n他表示，今天盛行西南季風，大氣不穩定；迎風面中南部有局部陣雨或雷雨，有激發劇烈天氣(雷擊、強風、瞬間強降雨)的機率；應注意氣象局的特報。午後山區對流發展，北部、東半部局部地區有受影響的機率；北部、東半部白天在未降雨時，天氣悶熱。今天氣溫北部25至36度、中部25至33度、南部24至33度、東部25至36度。\r\n\r\n吳德榮說，明天至周日西南季風低層水氣逐漸增多，大氣對流不穩定度更為提高；迎風面中南部有局部陣雨或雷雨，有激發劇烈天氣(雷擊、強風、瞬間強降雨、龍捲風…)的機率，並有連日大量降雨的潛勢；午後對流發展，並有擴及北部、東半部局部地區的機率；北部、東半部白天在未降雨時，天氣悶熱。\r\n\r\n下周一、周二雖轉為偏北風，但在季風低壓環流內，大氣仍不穩定，易有強降雨的天氣並未結束，仍需持續注意。', '2019-08-14 02:05:41', 1, NULL, NULL),
(11, NULL, '酸柯P「這招」自毀聰明形象　他：明年是台灣最慘烈大選', '2020總統大選在即，藍綠兩黨人選底定，而台北市長柯文哲、鴻海創辦人郭台銘、前立法院長王金平近日遭傳有意合作結盟，郭台銘辦公室昨(12日)證實，三方不排除本週找機會互相溝通。對此，文化大學新聞系主任胡幼偉今(13日)在臉書斷言，「2020將成為台灣有史以來，最慘烈的一場總統大選！」 柯文哲日前宣布成立「台灣民眾黨」。對於何時與郭王見面，柯回應，「3個都是大忙人，也許給三方幕僚去安排個時間，這個要時間地點，談甚麼大家要先想一下」。對此，郭台銘辦公室也發聲明，「經過彼此電話聯繫後，不排除本週之內會找機會相互溝通了解一下。」 對此，胡幼偉在臉書發表看法。他指出「郭台銘看起來還是想選總統」，不過，若郭終究未與韓國瑜再見面長談1次，對郭而言，不是明智的決策模式。他認為，郭至少所有的利害關係人都應該談過1遍後，再做最後決定，才不會誤判情勢。胡幼偉猜測，郭如果決定參選，自認具正當性的理由，必然是，「想為國家做出貢獻」但殊不知這正是最沒道理的講法。而且，如果輸了，且輸的很難看，「他已做好心裡準備了嗎？」', '2019-08-14 01:51:39', 1, '2019-08-14 02:02:01', NULL),
(12, NULL, '123', '321', '2019-08-13 21:13:00', 1, '2019-08-13 21:13:00', NULL),
(13, NULL, '666', '777', '2019-08-13 23:10:31', 1, '2019-08-13 23:10:31', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `departments`
--

CREATE TABLE `departments` (
  `departmentId` int(11) NOT NULL,
  `departmentName` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `departments`
--

INSERT INTO `departments` (`departmentId`, `departmentName`) VALUES
(1, 'Corporate'),
(2, 'Engineering'),
(3, 'Sales'),
(4, 'Marketing'),
(5, 'Accounting');

-- --------------------------------------------------------

--
-- 資料表結構 `employees`
--

CREATE TABLE `employees` (
  `employeeId` int(11) NOT NULL,
  `firstName` varchar(30) DEFAULT NULL,
  `lastName` varchar(30) DEFAULT NULL,
  `managerId` int(11) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `departmentId` int(11) DEFAULT NULL,
  `officePhone` varchar(45) DEFAULT NULL,
  `cellPhone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `picture` varchar(250) DEFAULT NULL,
  `account` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `sid` varchar(64) NOT NULL,
  `subscribed` tinyint(1) NOT NULL DEFAULT '0',
  `canView` tinyint(1) NOT NULL DEFAULT '1',
  `canAdd` tinyint(1) NOT NULL DEFAULT '0',
  `canEdit` tinyint(1) NOT NULL DEFAULT '0',
  `canDelete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `employees`
--

INSERT INTO `employees` (`employeeId`, `firstName`, `lastName`, `managerId`, `title`, `departmentId`, `officePhone`, `cellPhone`, `email`, `city`, `picture`, `account`, `password`, `sid`, `subscribed`, `canView`, `canAdd`, `canEdit`, `canDelete`) VALUES
(1, 'James', 'King', 0, 'President and CEO', 1, '617-000-0001', '781-000-0001', 'jking@fakemail.com', 'Boston, MA', 'james_king.jpg', 'James', '6febc6329f1cd251f0d569e1279ad65a', '', 1, 1, 1, 1, 1),
(2, 'Julie', 'Taylor', 1, 'VP of Marketing', 4, '617-000-0002', '781-000-0002', 'jtaylor@fakemail.com', 'Boston, MA', 'julie_taylor.jpg', 'Julie', '6febc6329f1cd251f0d569e1279ad65a', '', 0, 1, 0, 0, 0),
(3, 'Eugene', 'Lee', 1, 'CFO', 5, '617-000-0003', '781-000-0003', 'elee@fakemail.com', 'Boston, MA', 'eugene_lee.jpg', 'Eugene', '6febc6329f1cd251f0d569e1279ad65a', '', 0, 1, 0, 0, 0),
(4, 'John', 'Williams', 1, 'VP of Engineering', 2, '617-000-0004', '781-000-0004', 'jwilliams@fakemail.com', 'Boston, MA', 'john_williams.jpg', 'John', '6febc6329f1cd251f0d569e1279ad65a', '', 0, 1, 0, 0, 0),
(5, 'Ray', 'Moore', 1, 'VP of Sales', 3, '617-000-0005', '781-000-0005', 'rmoore@fakemail.com', 'Boston, MA', 'ray_moore.jpg', 'Ray', '6febc6329f1cd251f0d569e1279ad65a', '', 0, 1, 0, 0, 0),
(6, 'Paul', 'Jones', 4, 'QA Manager', 2, '617-000-0006', '781-000-0006', 'pjones@fakemail.com', 'Boston, MA', 'paul_jones.jpg', 'Paul', '6febc6329f1cd251f0d569e1279ad65a', '', 0, 1, 0, 0, 0),
(7, 'Paula', 'Gates', 4, 'Software Architect', 2, '617-000-0007', '781-000-0007', 'pgates@fakemail.com', 'Boston, MA', 'paula_gates.jpg', 'Paula', '6febc6329f1cd251f0d569e1279ad65a', '', 0, 1, 0, 0, 0),
(8, 'Lisa', 'Wong', 2, 'Marketing Manager', 4, '617-000-0008', '781-000-0008', 'lwong@fakemail.com', 'Boston, MA', 'lisa_wong.jpg', 'Lisa', '6febc6329f1cd251f0d569e1279ad65a', '', 0, 1, 0, 0, 0),
(9, 'Gary', 'Donovan', 2, 'Marketing', 4, '617-000-0009', '781-000-0009', 'gdonovan@fakemail.com', 'Boston, MA', 'gary_donovan.jpg', 'Gary', '6febc6329f1cd251f0d569e1279ad65a', '', 0, 1, 0, 0, 0),
(10, 'Kathleen', 'Byrne', 5, 'Sales Representative', 3, '617-000-0010', '781-000-0010', 'kbyrne@fakemail.com', 'Boston, MA', 'kathleen_byrne.jpg', 'Kathleen', '6febc6329f1cd251f0d569e1279ad65a', '', 0, 1, 0, 0, 0),
(11, 'Amy', 'Jones', 5, 'Sales Representative', 3, '617-000-0011', '781-000-0011', 'ajones@fakemail.com', 'Boston, MA', 'amy_jones.jpg', 'Amy', '6febc6329f1cd251f0d569e1279ad65a', '', 0, 1, 0, 0, 0),
(12, 'Steven', 'Wells', 4, 'Software Architect', 2, '617-000-0012', '781-000-0012', 'swells@fakemail.com', 'Boston, MA', 'steven_wells.jpg', 'Steven', '6febc6329f1cd251f0d569e1279ad65a', '', 0, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_08_14_034553_create_users_table', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscribed` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `subscribed`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mars', 'mars77728@gmail.com', '$2y$10$zD/G6ckK4mTzmxVVp5wtHePC.BszsRwYeBt.bGdjA26Q1szUASiAy', 1, NULL, '2019-07-31 16:00:00', NULL),
(2, 'mars6666', 'mars6666@gmail.com', '$2y$10$EY80LSj5Uk7u1Erq/7AeEeZSD7fSUOqF70OyiGvOXYd.Izl1qgTIy', 0, 'DwgKZa46WeJTKQxsBtUbF77jF4K7hEPPyrowYvHFuOFE4yRGcyzVDKAcKANF', '2019-08-13 21:43:57', '2019-08-13 21:43:57'),
(3, 'mars7777', 'mars7777@gmail.com', '$2y$10$uf8MafcyiQfNNbe/P.RPi.DY.HcQk1gPYK2xQk7QsxlYPYW8R9j76', 0, NULL, '2019-08-13 23:20:08', '2019-08-13 23:20:08'),
(4, 'mars8888', 'mars8888@gmail.com', '$2y$10$lU0m.IfTzZToPTRd35VJgOAib2yG9ZbYGGiFo/.6qyda3LNYcp6pC', 1, 'yMxyd5Z8tYDwxwd4DtvQVs24vjKLwMO2QmRrGm1B6OlJgojaiC0yBgo5ErGF', '2019-08-13 23:22:13', '2019-08-13 23:22:13');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`announcementId`);

--
-- 資料表索引 `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`departmentId`);

--
-- 資料表索引 `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employeeId`),
  ADD KEY `fk_departments_employees` (`departmentId`);

--
-- 資料表索引 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `announcements`
--
ALTER TABLE `announcements`
  MODIFY `announcementId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用資料表 AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表 AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 已匯出資料表的限制(Constraint)
--

--
-- 資料表的 Constraints `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `fk_departments_employees` FOREIGN KEY (`departmentId`) REFERENCES `departments` (`departmentId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
