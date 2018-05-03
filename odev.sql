-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2018 at 07:03 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `odev`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`username`, `password`) VALUES
('aytac', 'ben'),
('sen', 'sen');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `aid` int(10) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `image` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`aid`, `title`, `image`, `link`) VALUES
(2, 'Test announcement. It works!!!', 'img2.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `attemps`
--

CREATE TABLE `attemps` (
  `username` text NOT NULL,
  `sid` int(11) NOT NULL,
  `pricePaid` int(11) NOT NULL,
  `personCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` text NOT NULL,
  `email` text NOT NULL,
  `phoneNumber` int(11) NOT NULL,
  `bDate` date NOT NULL,
  `registerDate` date NOT NULL,
  `adress` varchar(30) DEFAULT NULL,
  `name` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `username` text NOT NULL,
  `mid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `type` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `therapist` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `type` varchar(7) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `description` text CHARACTER SET latin5 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`type`, `description`) VALUES
('FITNESS', 'GÃ¼venilir Technogym ekipmanlari; Cardio cihazlarÄ±ndaki LCD dokumatik ekran TV âler ile sÄ±kÄ±lmadan , size Ã¶zel yÃ¼zÃ¼ aÅkÄ±n egzersiz programlarÄ±yla keyifle egzersiz yapma olanaÄÄ±, Uzman eÄitmenler eÅliÄinde kiÅiye Ã¶zel egzersiz programlarÄ± hazÄ±rlanmasÄ± ve takibi,  antrenmanlarÄ±nÄ±z sonrasÄ± geliÅim takibi iÃ§in dÃ¼zenli olarak yapÄ±lan yaÄ, kas-kemik Ã¶lÃ§Ã¼mleri ve vÃ¼cut analizi.\r\n<br>\r\n<b>SÄ°ZE ÃZEL EÄÄ°TMEN, SÄ°ZE ÃZEL EGZERSÄ°Z!</b>\r\n<br>\r\nProfesyonel  sporda baÅarÄ±nÄ±n en Ã¶nemli anahtar sporcularÄ± hazÄ±rlayan Ã¶zel eÄitmenleri ve uyguladÄ±klarÄ± tekniklerdir. DÃ¼nyada Ã¼nlÃ¼ sporcular takÄ±mla yaptÄ±klarÄ± antrenmanlarÄ±n yanÄ± sÄ±ra mutlaka âProfesyonel EÄitmenâ ile Ã§alÄ±ÅmaktadÄ±rlar. Personal Coaching hizmetiyle QualitasspaânÄ±n uzman eÄitmen kadrosu sayesinde ulaÅmak istediÄiniz gÃ¶rÃ¼nÃ¼me Ã§ok kolay bir Åekilde ulaÅacaksÄ±nÄ±z.\r\n<br>\r\n<b>FIT & ZÄ°NDE GÃRÃNÃN!</b>\r\n<br>\r\nÃzel egzersiz programÄ± ile kendinize gÃ¼veninizi arttÄ±racak bir dÄ±Å gÃ¶rÃ¼nÃ¼m kazanÄ±rsÄ±nÄ±z. AyrÄ±ca karÄ±n, kalÃ§a, basen gibi bÃ¶lgelerinizi rahatlÄ±kla forma sokabilirsiniz.\r\n<br>\r\n<b>SAÄLIKLI KALIN!</b>\r\n<br>\r\nÃzel egzersiz programÄ± size antrenman prensipleri kazandÄ±rÄ±r. AyrÄ±ca sportif performansÄ±nÄ±z artar.\r\n\r\n<br>\r\n<b>ZAMAN SÄ°ZE UYSUN</b>\r\n<br>\r\nÃzel egzersiz programÄ± ile spor programÄ± zamanlarÄ±nÄ±z size Ã¶zel belirlenir. Spor yapabilmek iÃ§in zamanla yarÄ±Åmak zorunda kalmazsÄ±nÄ±z.\r\n<br>\r\n<b>HEDEFÄ°NÄ°ZE ULAÅIN!</b>\r\n<br>\r\nÃzel egzersiz programÄ±nÄ±n hedefi, sizi hedefinize ulaÅtÄ±rmaktÄ±r. Bu yÃ¼zden Motivasyonunuz daima en Ã¼st dÃ¼zeyde tutulur.'),
('POOL', 'Our indoor swimming pool is ready for both leisure and business guests as well as summer and winter for guests who want to relax in a quiet environment and take advantage of the healing power of the water.\r\n\r\nOur pool is 1.50 cm deep and 18 m long. Pool water temperature varies between 26-28 degrees and pool environment temperature is fixed at 32 degrees with special system'),
('SAUNA', 'Günümüzde sağlıklı bir vücuda ve zihine sahip olmanın  değeri gün geçtikçe daha iyi anlaşılmaktadır. ?Sauna? kullanımı en doğal ve sağlıklı olarak vücudumuzu dinlendirme ve zindelik kazandırma yöntemlerinden birisi olarak göze çarpmaktadır. Günün stresinden ve sorunlarınızdan sıyrılıp sıcak, nemli ve ahşap bir oda içerisinde hem terleyerek hem de gevşeyerek dinlenmenizi ve rahatlamanızı sağlayan bir sağlık kabinidir. Saunanın yararları eski çağlardan beri inşalar tarafından bilinmektedir ve depresif bozukluklar, kireçlenme, romatizma gibi daha bir çok hastalığın tedavisinde kullanılmaktadır. Gün boyunca yorulan vücudunuzu dinlendirmek ve kendinizi daha iyi hissetmenizi sağlamak için, daha sağlıklı bir yaşama sauna ile merhaba diyebilirsiniz.');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `sid` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `capacity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `therapist` int(11) NOT NULL,
  `type` varchar(7) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`sid`, `date`, `capacity`, `price`, `therapist`, `type`, `name`) VALUES
(1, '2018-05-09 13:00:00', 2, 300, 1, 'FITNESS', 'Happy ending massage'),
(2, '2018-05-05 00:00:00', 2, 300, 2, 'SAUNA', 'Hell'),
(3, '2018-05-01 13:00:00', 4, 5, 1, 'POOL', 'Expired session');

-- --------------------------------------------------------

--
-- Table structure for table `therapist`
--

CREATE TABLE `therapist` (
  `tid` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  `startDate` date NOT NULL,
  `name` varchar(18) NOT NULL,
  `bDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `therapist`
--

INSERT INTO `therapist` (`tid`, `salary`, `startDate`, `name`, `bDate`) VALUES
(1, 300, '2013-07-17', 'Aytaç Kayadelen', '1997-04-03'),
(2, 300, '2017-08-07', 'Esin Bahar Meseli', '1998-06-06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`username`(10));

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `attemps`
--
ALTER TABLE `attemps`
  ADD PRIMARY KEY (`sid`,`username`(11)) USING BTREE;

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`(11));

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`type`,`date`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`type`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`sid`) USING BTREE;

--
-- Indexes for table `therapist`
--
ALTER TABLE `therapist`
  ADD PRIMARY KEY (`tid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `aid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `therapist`
--
ALTER TABLE `therapist`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
