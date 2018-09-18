-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2018 at 01:01 PM
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
-- Database: `nfq`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE utf8_lithuanian_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_lithuanian_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_lithuanian_ci DEFAULT NULL,
  `phonenumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `firstname`, `lastname`, `address`, `phonenumber`) VALUES
(1, 'Kay', 'Baird', 'Ap #654-6503 Amet St.', 863602339),
(2, 'Kyra', 'Fleming', '3524 Varius. Ave', 864852985),
(3, 'Prescott', 'Weber', '2484 Est St.', 865834664),
(4, 'Yardley', 'Nelson', 'P.O. Box 561, 382 Accumsan Av.', 866593386),
(5, 'Rose', 'Rowe', '8025 Sapien, Rd.', 864302694),
(6, 'Kylie', 'Mckee', 'P.O. Box 969, 4509 Phasellus Rd.', 868214725),
(7, 'Hunter', 'Joyce', '1961 Mattis St.', 861736995),
(8, 'Raymond', 'Torres', '941-6100 Fusce Rd.', 861111259),
(9, 'Libby', 'Cox', '6283 Ultrices Street', 864586753),
(10, 'Quamar', 'Floyd', 'Ap #148-7417 Nunc St.', 865240491),
(11, 'Casey', 'Briggs', 'P.O. Box 935, 4802 Proin Ave', 868426426),
(12, 'Amanda', 'Clemons', 'Ap #126-4170 Ipsum Ave', 861987291),
(13, 'Bradley', 'Garcia', '4333 Diam St.', 862250244),
(14, 'Ashely', 'Sandoval', '5985 Augue St.', 866380802),
(15, 'Quail', 'Porter', '1548 Ad St.', 863182172),
(16, 'Courtney', 'Mayo', 'P.O. Box 478, 5704 Vel St.', 866516207),
(17, 'Rae', 'Gibbs', 'P.O. Box 751, 651 Sem Av.', 861885565),
(18, 'Danielle', 'Lucas', 'Ap #384-5242 Mauris Av.', 866530071),
(19, 'Driscoll', 'Floyd', 'P.O. Box 884, 6719 Suspendisse St.', 861426490),
(20, 'Igor', 'Whitney', 'Ap #530-1681 Ultrices Rd.', 864244525),
(21, 'Kennan', 'Mcintyre', 'P.O. Box 792, 5296 Sodales. Ave', 861561981),
(22, 'Salvador', 'Leon', '582-7337 Dolor. Rd.', 860842842),
(23, 'Noelle', 'Knapp', 'Ap #773-1465 Scelerisque Ave', 861757964),
(24, 'Cecilia', 'Morton', 'Ap #406-2603 Auctor Street', 860394202),
(25, 'David', 'Horton', 'Ap #141-8824 Imperdiet, Rd.', 861196291),
(26, 'Destiny', 'Boyd', '560-6639 Dolor. Rd.', 867511194),
(27, 'Derek', 'Hudson', 'Ap #180-2355 Aenean Av.', 862572020),
(28, 'Evangeline', 'Vinson', '2609 Dapibus Av.', 865185090),
(29, 'Brandon', 'Parsons', 'P.O. Box 769, 9867 Nec St.', 860593686),
(30, 'Leila', 'Bullock', 'P.O. Box 977, 6366 Convallis Av.', 860209365),
(31, 'Cassady', 'Sweeney', 'Ap #229-1034 Velit Rd.', 864079918),
(32, 'Nicole', 'Gibbs', '8838 Nec Street', 865822016),
(33, 'Brady', 'Russell', '8697 Massa Road', 862669294),
(34, 'Justin', 'Hartman', 'P.O. Box 120, 9653 Proin Avenue', 862915932),
(35, 'George', 'Le', '1554 Nulla Rd.', 862704845),
(36, 'Rana', 'Allen', 'P.O. Box 901, 1644 A St.', 863347365),
(37, 'Savannah', 'Wolfe', '8093 Enim. Rd.', 861371990),
(38, 'Xena', 'Bishop', '3423 Penatibus Road', 866477495),
(39, 'Rafael', 'Mcleod', 'Ap #853-6924 Convallis Rd.', 869208306),
(40, 'Hedley', 'Snyder', '300-3109 Turpis Ave', 867254118),
(41, 'Rudyard', 'Cannon', '2618 Consectetuer Rd.', 868216102),
(42, 'Zahir', 'Waters', '4788 Magnis Avenue', 867132949),
(43, 'Benedict', 'Davenport', '371-2541 Malesuada St.', 862535921),
(44, 'Branden', 'Pratt', 'Ap #106-7162 Fringilla, Street', 867791583),
(45, 'Fritz', 'Hines', '1497 Nam Av.', 869197292),
(46, 'Evangeline', 'Blankenship', 'Ap #533-2841 Dis Ave', 868353569),
(47, 'Riley', 'Hodge', 'P.O. Box 620, 1006 Risus Av.', 862223752),
(48, 'Roanna', 'Finley', 'Ap #102-7926 Vel, Road', 867386613),
(49, 'Brooke', 'Gordon', '428-4976 Augue Rd.', 860190566),
(50, 'Conan', 'Gregory', 'Ap #820-1946 Nisi St.', 860382723),
(51, 'Natalie', 'Decker', '196-9945 Eu, Av.', 861268506),
(52, 'Tad', 'Mcintyre', 'Ap #421-7577 Velit. St.', 869763609),
(53, 'Ignatius', 'Miles', '9406 Tincidunt St.', 868601971),
(54, 'Evelyn', 'Crawford', '430-8768 Nec Street', 865533091),
(55, 'Zane', 'Calderon', '680-1074 Vel Road', 860673327),
(56, 'Nora', 'Yates', 'Ap #723-4519 Lacus. Av.', 864402909),
(57, 'Nathaniel', 'Roach', '942-3677 Arcu. St.', 866697535),
(58, 'Kane', 'William', '917-2928 Ultricies Rd.', 860224884),
(59, 'Anika', 'Stout', '155-2940 Aenean Ave', 861417496),
(60, 'Burke', 'Vargas', 'P.O. Box 469, 5759 Mi, Rd.', 864041610),
(61, 'Clementine', 'Franklin', '8703 Fringilla Rd.', 863329686),
(62, 'Hamilton', 'Benton', '1029 Ligula Avenue', 860609430),
(63, 'Illiana', 'Stevenson', 'Ap #487-6598 Volutpat. St.', 862687611),
(64, 'Kuame', 'Bates', 'Ap #439-7831 Tellus Street', 864159993),
(65, 'Bevis', 'Owen', '946-6206 Pellentesque. Street', 868216093),
(66, 'Irene', 'Tucker', '433-7928 Morbi Av.', 864615104),
(67, 'Octavius', 'Owen', 'P.O. Box 179, 5533 A, Road', 868065269),
(68, 'Basil', 'Tyson', 'P.O. Box 257, 1417 Sed St.', 867579058),
(69, 'Carly', 'Leonard', 'P.O. Box 783, 2139 Vel Av.', 865358015),
(70, 'Ezra', 'Lucas', '280-9758 Urna St.', 860029808),
(71, 'Hu', 'Davenport', 'Ap #269-2363 In, Avenue', 868553515),
(72, 'McKenzie', 'Cain', '926-4719 Nibh. St.', 867031901),
(73, 'Tamekah', 'Christian', 'P.O. Box 467, 3910 Quis, Street', 863762009),
(74, 'Chandler', 'Hall', 'Ap #140-2609 Etiam Rd.', 867073624),
(75, 'Harper', 'Joyner', '7171 Tellus Rd.', 864065895),
(76, 'Rajah', 'Ward', '9857 Pharetra Av.', 868303255),
(77, 'Mannix', 'Lopez', 'P.O. Box 624, 8882 Congue. Ave', 868110560),
(78, 'Harlan', 'Osborne', 'Ap #830-6239 Ad Ave', 862406087),
(79, 'Anthony', 'Beck', 'Ap #491-2024 Erat Rd.', 867207876),
(80, 'Nola', 'Robles', 'P.O. Box 421, 174 Cursus Av.', 868409057),
(81, 'Haley', 'Kelly', 'Ap #768-2268 Sagittis Road', 869716776),
(82, 'Maite', 'Pacheco', 'P.O. Box 757, 2124 Sem Rd.', 864008297),
(83, 'Eagan', 'Kidd', '721-2671 Nec, St.', 864557350),
(84, 'Ciara', 'Mcmahon', 'Ap #921-5668 Et, Av.', 863711727),
(85, 'Oscar', 'Rodriguez', 'P.O. Box 877, 9817 Varius Av.', 866195287),
(86, 'Amir', 'Mcneil', 'Ap #747-2601 Suscipit, Road', 867347145),
(87, 'Dexter', 'Owen', 'P.O. Box 484, 8818 Ligula. Avenue', 863986353),
(88, 'Brielle', 'Tyson', 'Ap #505-543 Cursus, Avenue', 862815448),
(89, 'Quon', 'Combs', '6577 Nibh St.', 862472612),
(90, 'Donovan', 'Rodriguez', '896-7591 Vulputate, Av.', 868086776),
(91, 'Judah', 'Ball', '818-8991 Vel, Rd.', 869561860),
(92, 'Iona', 'Sellers', 'P.O. Box 264, 4826 Sagittis Avenue', 864666198),
(93, 'Ima', 'Frank', '1314 Dolor St.', 867977577),
(94, 'Lareina', 'Joseph', '142-700 Tellus Avenue', 869798117),
(95, 'Kiara', 'Tate', '7011 Nascetur Rd.', 862379371),
(96, 'Troy', 'Wagner', '873-4936 Nibh. Ave', 862171810),
(97, 'Jessica', 'Velazquez', '127-6111 Amet, Road', 861991582),
(98, 'Ayanna', 'Warren', '941 Ut Rd.', 864712991),
(99, 'Florence', 'Becker', '484-9572 Pede. Rd.', 869931709),
(100, 'Vernon', 'Knowles', '896-2393 Natoque Rd.', 860702228),
(101, 'Lukas', 'Klasauskas', 'Šiaurės pr. 69-29', 69459811),
(102, 'Lukas', 'Glasauskas', 'Kiaurės pr. 69-28', 869459234);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
