-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2021 at 06:03 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs_db`
--
CREATE DATABASE IF NOT EXISTS `cs_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cs_db`;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `psent` text NOT NULL,
  `prec` text NOT NULL,
  `pdel` int(20) NOT NULL,
  `ptran` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`psent`, `prec`, `pdel`, `ptran`) VALUES
('123', '456', 789, 96300);

-- --------------------------------------------------------

--
-- Table structure for table `reciever`
--

CREATE TABLE `reciever` (
  `name` text NOT NULL,
  `contact` text NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reciever`
--

INSERT INTO `reciever` (`name`, `contact`, `location`) VALUES
('r al', '0', 'r dha');

-- --------------------------------------------------------

--
-- Table structure for table `sender`
--

CREATE TABLE `sender` (
  `name` varchar(50) NOT NULL,
  `p_tag` text NOT NULL,
  `contact` text NOT NULL,
  `location` text NOT NULL,
  `bill` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sender`
--

INSERT INTO `sender` (`name`, `p_tag`, `contact`, `location`, `bill`) VALUES
('1', '', '2', '6776', '678'),
('alkemy', '', '215544', 'dhaka', '120'),
('Xayeed', '', '1983886116', 'Gazipur', '1000'),
('Xayeed', '', '168', 'Gazipur', '1200'),
('ashik', '420', '0', 'sumi', '0');
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CATEGORY_ID` int(11) NOT NULL,
  `CNAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CATEGORY_ID`, `CNAME`) VALUES
(0, 'Beverages'),
(1, 'Bakery'),
(2, 'Dairy'),
(3, 'FrozenFoods'),
(4, 'Meat'),
(5, 'PersonalCare'),
(6, 'PaperGoods'),
(7, 'Fruits'),
(9, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUST_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EMPLOYEE_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `GENDER` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL,
  `JOB_ID` int(11) DEFAULT NULL,
  `HIRED_DATE` varchar(50) NOT NULL,
  `LOCATION_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EMPLOYEE_ID`, `FIRST_NAME`, `LAST_NAME`, `GENDER`, `EMAIL`, `PHONE_NUMBER`, `JOB_ID`, `HIRED_DATE`, `LOCATION_ID`) VALUES
(1, 'Test', 'Admin', 'Male', 'antu.khan.988@gmail.com', '01747220357', 1, '0000-00-00', 113),
(2, 'Demo', 'Employe', 'Male', 'deo@yahoo.com', '543457475', 2, '2019-01-28', 156),
(4, 'Demo1', 'Employe', 'Female', 'dgdfbg@gmail.com', '535453', 1, '2019-03-06', 158);

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `JOB_ID` int(11) NOT NULL,
  `JOB_TITLE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`JOB_ID`, `JOB_TITLE`) VALUES
(1, 'Manager'),
(2, 'Cashier');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `LOCATION_ID` int(11) NOT NULL,
  `PROVINCE` varchar(100) DEFAULT NULL,
  `CITY` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`LOCATION_ID`, `PROVINCE`, `CITY`) VALUES
(111, 'Negros Occidental', 'Bacolod City'),
(112, 'Negros Occidental', 'Bacolod City'),
(113, 'Dhaka', 'Dhaka'),
(114, 'Negros Occidental', 'Himamaylan'),
(115, 'Negros Oriental', 'Dumaguette City'),
(116, 'Negros Occidental', 'Isabella'),
(126, 'Negros Occidental', 'Binalbagan'),
(130, 'Cebu', 'Bogo City'),
(131, 'Negros Occidental', 'Himamaylan'),
(132, 'Negros', 'Jupiter'),
(133, 'Aincrad', 'Floor 91'),
(134, 'negros', 'binalbagan'),
(135, 'hehe', 'tehee'),
(136, 'PLANET YEKOK', 'KOKEY'),
(137, 'Camiguin', 'Catarman'),
(138, 'Camiguin', 'Catarman'),
(139, 'Negros Occidental', 'Binalbagan'),
(140, 'Batangas', 'Lemery'),
(141, 'Capiz', 'Panay'),
(142, 'Camarines Norte', 'Labo'),
(143, 'Camarines Norte', 'Labo'),
(144, 'Camarines Norte', 'Labo'),
(145, 'Camarines Norte', 'Labo'),
(146, 'Capiz', 'Pilar'),
(147, 'Negros Occidental', 'Moises Padilla'),
(148, 'a', 'a'),
(149, '1', '1'),
(150, 'Negros Occidental', 'Himamaylan'),
(151, 'Masbate', 'Mandaon'),
(152, 'Aklanas', 'Madalagsasa'),
(153, 'Batangas', 'Mabini'),
(154, 'Bataan', 'Morong'),
(155, 'Capiz', 'Pillar'),
(156, 'Dhaka', 'Dhaka'),
(157, 'Camarines Norte', 'Labo'),
(158, 'dfggfdfg', 'dfgdgffg'),
(159, 'Agusan del Norte', 'Buenavista');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `LOCATION_ID` int(11) NOT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`FIRST_NAME`, `LAST_NAME`, `LOCATION_ID`, `EMAIL`, `PHONE_NUMBER`) VALUES
('Prince Ly', 'Cesar', 113, 'PC@00', '09124033805'),
('Emman', 'Adventures', 116, 'emman@', '09123346576'),
('Bruce', 'Willis', 113, 'bruce@', NULL),
('Regine', 'Santos', 111, 'regine@', '09123456789');

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"phpmyadmin","table":"employee"},{"db":"cs_db","table":"sender"},{"db":"cs_db","table":"reciever"},{"db":"cs_db","table":"branch"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2017-10-24 06:39:57', '{"collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `PRODUCT_ID` int(11) NOT NULL,
  `PRODUCT_CODE` varchar(20) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(250) NOT NULL,
  `QTY_STOCK` int(50) DEFAULT NULL,
  `ON_HAND` int(250) NOT NULL,
  `PRICE` int(50) DEFAULT NULL,
  `CATEGORY_ID` int(11) DEFAULT NULL,
  `SUPPLIER_ID` int(11) DEFAULT NULL,
  `DATE_STOCK_IN` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PRODUCT_ID`, `PRODUCT_CODE`, `NAME`, `DESCRIPTION`, `QTY_STOCK`, `ON_HAND`, `PRICE`, `CATEGORY_ID`, `SUPPLIER_ID`, `DATE_STOCK_IN`) VALUES
(28, '111', 'Cocacola', 'sfdd', 1, 1, 20, 0, 17, '2021-02-28'),
(29, '111', 'Cocacola', 'sfdd', 1, 1, 20, 0, 17, '2021-02-28'),
(30, '111', 'Cocacola', 'sfdd', 1, 1, 20, 0, 17, '2021-02-28');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SUPPLIER_ID` int(11) NOT NULL,
  `COMPANY_NAME` varchar(50) DEFAULT NULL,
  `LOCATION_ID` int(11) NOT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SUPPLIER_ID`, `COMPANY_NAME`, `LOCATION_ID`, `PHONE_NUMBER`) VALUES
(17, 'vdfsvdfggg', 159, '5345665');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `TRANS_ID` int(50) NOT NULL,
  `CUST_ID` int(11) DEFAULT NULL,
  `NUMOFITEMS` varchar(250) NOT NULL,
  `SUBTOTAL` varchar(50) NOT NULL,
  `LESSVAT` varchar(50) NOT NULL,
  `NETVAT` varchar(50) NOT NULL,
  `ADDVAT` varchar(50) NOT NULL,
  `GRANDTOTAL` varchar(250) NOT NULL,
  `CASH` varchar(250) NOT NULL,
  `DATE` varchar(50) NOT NULL,
  `TRANS_D_ID` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`TRANS_ID`, `CUST_ID`, `NUMOFITEMS`, `SUBTOTAL`, `LESSVAT`, `NETVAT`, `ADDVAT`, `GRANDTOTAL`, `CASH`, `DATE`, `TRANS_D_ID`) VALUES
(3, 16, '3', '456,982.00', '48,962.36', '408,019.64', '48,962.36', '456,982.00', '500000', '2019-03-18', '0318160336'),
(4, 11, '2', '1,967.00', '210.75', '1,756.25', '210.75', '1,967.00', '2000', '2019-03-18', '0318160622'),
(5, 14, '1', '550.00', '58.93', '491.07', '58.93', '550.00', '550', '2019-03-18', '0318170309'),
(6, 15, '1', '77,850.00', '8,341.07', '69,508.93', '8,341.07', '77,850.00', '80000', '2019-03-18', '0318170352'),
(7, 16, '1', '1,718.00', '184.07', '1,533.93', '184.07', '1,718.00', '2000', '2019-03-18', '0318170511'),
(8, 16, '1', '1,718.00', '184.07', '1,533.93', '184.07', '1,718.00', '2000', '2019-03-18', '0318170524'),
(9, 14, '1', '1,718.00', '184.07', '1,533.93', '184.07', '1,718.00', '2000', '2019-03-18', '0318170551'),
(10, 11, '1', '289.00', '30.96', '258.04', '30.96', '289.00', '500', '2019-03-18', '0318170624'),
(11, 9, '2', '1,148.00', '123.00', '1,025.00', '123.00', '1,148.00', '2000', '2019-03-18', '0318170825'),
(12, 9, '1', '5,500.00', '589.29', '4,910.71', '589.29', '5,500.00', '6000', '2019-03-18 19:40 pm', '0318194016'),
(13, 14, '1', '550.00', '58.93', '491.07', '58.93', '550.00', '1000', '2020-12-30 03:16 am', '123031649'),
(14, 14, '1', '550.00', '58.93', '491.07', '58.93', '550.00', '550', '2020-12-30 22:57 pm', '1230225726'),
(15, 17, '1', '550.00', '58.93', '491.07', '58.93', '550.00', '550', '2021-01-01 19:40 pm', '0101194046');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `ID` int(11) NOT NULL,
  `TRANS_D_ID` varchar(250) NOT NULL,
  `PRODUCTS` varchar(250) NOT NULL,
  `QTY` varchar(250) NOT NULL,
  `PRICE` varchar(250) NOT NULL,
  `EMPLOYEE` varchar(250) NOT NULL,
  `ROLE` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`ID`, `TRANS_D_ID`, `PRODUCTS`, `QTY`, `PRICE`, `EMPLOYEE`, `ROLE`) VALUES
(7, '0318160336', 'Lenovo ideapad 20059', '2', '32999', 'Prince Ly', 'Manager'),
(8, '0318160336', 'Predator Helios 300 Gaming Laptop', '5', '77850', 'Prince Ly', 'Manager'),
(9, '0318160336', 'A4tech OP-720', '6', '289', 'Prince Ly', 'Manager'),
(10, '0318160622', 'Newmen E120', '2', '550', 'Prince Ly', 'Manager'),
(11, '0318160622', 'A4tech OP-720', '3', '289', 'Prince Ly', 'Manager'),
(12, '0318170309', 'Newmen E120', '1', '550', 'Prince Ly', 'Manager'),
(13, '0318170352', 'Predator Helios 300 Gaming Laptop', '1', '77850', 'Prince Ly', 'Manager'),
(14, '0318170511', 'Fantech EG1', '2', '859', 'Prince Ly', 'Manager'),
(15, '0318170524', 'Fantech EG1', '2', '859', 'Prince Ly', 'Manager'),
(16, '0318170551', 'Fantech EG1', '2', '859', 'Prince Ly', 'Manager'),
(17, '0318170624', 'A4tech OP-720', '1', '289', 'Prince Ly', 'Manager'),
(18, '0318170825', 'A4tech OP-720', '1', '289', 'Prince Ly', 'Manager'),
(19, '0318170825', 'Fantech EG1', '1', '859', 'Prince Ly', 'Manager'),
(20, '0318194016', 'Newmen E120', '10', '550', 'Josuey', 'Cashier'),
(21, '123031649', 'Newmen E120', '1', '550', 'Josuey', 'Cashier'),
(22, '1230225726', 'Newmen E120', '1', '550', 'Prince Ly', 'Manager'),
(23, '0101194046', 'Newmen E120', '1', '550', 'Prince Ly', 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `TYPE_ID` int(11) NOT NULL,
  `TYPE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`TYPE_ID`, `TYPE`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `EMPLOYEE_ID` int(11) DEFAULT NULL,
  `USERNAME` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `TYPE_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `EMPLOYEE_ID`, `USERNAME`, `PASSWORD`, `TYPE_ID`) VALUES
(1, 1, 'Admin', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 1),
(7, 2, 'test', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 2),
(9, 4, 'mncpdrnl', '8cb2237d0679ca88db6464eac60da96345513964', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CATEGORY_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUST_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EMPLOYEE_ID`),
  ADD UNIQUE KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`),
  ADD UNIQUE KEY `PHONE_NUMBER` (`PHONE_NUMBER`),
  ADD KEY `LOCATION_ID` (`LOCATION_ID`),
  ADD KEY `JOB_ID` (`JOB_ID`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`JOB_ID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`LOCATION_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD UNIQUE KEY `PHONE_NUMBER` (`PHONE_NUMBER`),
  ADD KEY `LOCATION_ID` (`LOCATION_ID`);

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`PRODUCT_ID`),
  ADD KEY `CATEGORY_ID` (`CATEGORY_ID`),
  ADD KEY `SUPPLIER_ID` (`SUPPLIER_ID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SUPPLIER_ID`),
  ADD KEY `LOCATION_ID` (`LOCATION_ID`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`TRANS_ID`),
  ADD KEY `TRANS_DETAIL_ID` (`TRANS_D_ID`),
  ADD KEY `CUST_ID` (`CUST_ID`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TRANS_D_ID` (`TRANS_D_ID`) USING BTREE;

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`TYPE_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TYPE_ID` (`TYPE_ID`),
  ADD KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CATEGORY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CUST_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EMPLOYEE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `LOCATION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;
--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `PRODUCT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SUPPLIER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `TRANS_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`JOB_ID`) REFERENCES `job` (`JOB_ID`);

--
-- Constraints for table `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`CATEGORY_ID`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`SUPPLIER_ID`) REFERENCES `supplier` (`SUPPLIER_ID`);

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`);
--
-- Database: `supershop`
--
CREATE DATABASE IF NOT EXISTS `supershop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `supershop`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CATEGORY_ID` int(11) NOT NULL,
  `CNAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CATEGORY_ID`, `CNAME`) VALUES
(0, 'Beverages'),
(1, 'Bakery'),
(2, 'Dairy'),
(3, 'FrozenFoods'),
(4, 'Meat'),
(5, 'PersonalCare'),
(6, 'PaperGoods'),
(7, 'Fruits'),
(9, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUST_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUST_ID`, `FIRST_NAME`, `LAST_NAME`, `PHONE_NUMBER`) VALUES
(1, 'Sabrina', 'mily', '01654585687'),
(2, 'Arifa', 'ritu', '01648624831'),
(3, 'Sania', 'Alam', '01746237625'),
(4, 'Annona', 'anu', '01815457565');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EMPLOYEE_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `GENDER` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL,
  `JOB_ID` int(11) DEFAULT NULL,
  `HIRED_DATE` varchar(50) NOT NULL,
  `LOCATION_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EMPLOYEE_ID`, `FIRST_NAME`, `LAST_NAME`, `GENDER`, `EMAIL`, `PHONE_NUMBER`, `JOB_ID`, `HIRED_DATE`, `LOCATION_ID`) VALUES
(1, 'Test', 'Admin', 'Male', 'antu.khan.988@gmail.com', '01747220357', 1, '0000-00-00', 113),
(2, 'Demo', 'Employe', 'Male', 'deo@yahoo.com', '543457475', 2, '2019-01-28', 156),
(4, 'Demo1', 'Employe', 'Female', 'dgdfbg@gmail.com', '535453', 1, '2019-03-06', 158);

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `JOB_ID` int(11) NOT NULL,
  `JOB_TITLE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`JOB_ID`, `JOB_TITLE`) VALUES
(1, 'Manager'),
(2, 'Cashier');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `LOCATION_ID` int(11) NOT NULL,
  `PROVINCE` varchar(100) DEFAULT NULL,
  `CITY` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`LOCATION_ID`, `PROVINCE`, `CITY`) VALUES
(111, 'Negros Occidental', 'Bacolod City'),
(112, 'Negros Occidental', 'Bacolod City'),
(113, 'Dhaka', 'Dhaka'),
(114, 'Negros Occidental', 'Himamaylan'),
(115, 'Negros Oriental', 'Dumaguette City'),
(116, 'Negros Occidental', 'Isabella'),
(126, 'Negros Occidental', 'Binalbagan'),
(130, 'Cebu', 'Bogo City'),
(131, 'Negros Occidental', 'Himamaylan'),
(132, 'Negros', 'Jupiter'),
(133, 'Aincrad', 'Floor 91'),
(134, 'negros', 'binalbagan'),
(135, 'hehe', 'tehee'),
(136, 'PLANET YEKOK', 'KOKEY'),
(137, 'Camiguin', 'Catarman'),
(138, 'Camiguin', 'Catarman'),
(139, 'Negros Occidental', 'Binalbagan'),
(140, 'Batangas', 'Lemery'),
(141, 'Capiz', 'Panay'),
(142, 'Camarines Norte', 'Labo'),
(143, 'Camarines Norte', 'Labo'),
(144, 'Camarines Norte', 'Labo'),
(145, 'Camarines Norte', 'Labo'),
(146, 'Capiz', 'Pilar'),
(147, 'Negros Occidental', 'Moises Padilla'),
(148, 'a', 'a'),
(149, '1', '1'),
(150, 'Negros Occidental', 'Himamaylan'),
(151, 'Masbate', 'Mandaon'),
(152, 'Aklanas', 'Madalagsasa'),
(153, 'Batangas', 'Mabini'),
(154, 'Bataan', 'Morong'),
(155, 'Capiz', 'Pillar'),
(156, 'Dhaka', 'Dhaka'),
(157, 'Camarines Norte', 'Labo'),
(158, 'dfggfdfg', 'dfgdgffg'),
(159, 'Agusan del Norte', 'Buenavista'),
(160, 'Biliran', 'Naval');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `LOCATION_ID` int(11) NOT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`FIRST_NAME`, `LAST_NAME`, `LOCATION_ID`, `EMAIL`, `PHONE_NUMBER`) VALUES
('Prince Ly', 'Cesar', 113, 'PC@00', '09124033805'),
('Emman', 'Adventures', 116, 'emman@', '09123346576'),
('Bruce', 'Willis', 113, 'bruce@', NULL),
('Regine', 'Santos', 111, 'regine@', '09123456789');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `PRODUCT_ID` int(11) NOT NULL,
  `PRODUCT_CODE` varchar(20) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(250) NOT NULL,
  `QTY_STOCK` int(50) DEFAULT NULL,
  `ON_HAND` int(250) NOT NULL,
  `PRICE` int(50) DEFAULT NULL,
  `CATEGORY_ID` int(11) DEFAULT NULL,
  `SUPPLIER_ID` int(11) DEFAULT NULL,
  `DATE_STOCK_IN` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PRODUCT_ID`, `PRODUCT_CODE`, `NAME`, `DESCRIPTION`, `QTY_STOCK`, `ON_HAND`, `PRICE`, `CATEGORY_ID`, `SUPPLIER_ID`, `DATE_STOCK_IN`) VALUES
(28, '111', 'Cocacola', 'sfdd', 1, 1, 20, 0, 17, '2021-02-28'),
(29, '111', 'Cocacola', 'sfdd', 1, 1, 20, 0, 17, '2021-02-28'),
(30, '111', 'Cocacola', 'sfdd', 1, 1, 20, 0, 17, '2021-02-28'),
(31, '012', 'fanta', '250ml', 1, 1, 20, 0, 17, '2021-03-09'),
(32, '012', 'fanta', '250ml', 1, 1, 20, 0, 17, '2021-03-09'),
(33, '012', 'fanta', '250ml', 1, 1, 20, 0, 17, '2021-03-09'),
(34, '012', 'fanta', '250ml', 1, 1, 20, 0, 17, '2021-03-09'),
(35, '012', 'fanta', '250ml', 1, 1, 20, 0, 17, '2021-03-09'),
(36, '012', 'fanta', '250ml', 1, 1, 20, 0, 17, '2021-03-09'),
(37, '012', 'fanta', '250ml', 1, 1, 20, 0, 17, '2021-03-09'),
(38, '012', 'fanta', '250ml', 1, 1, 20, 0, 17, '2021-03-09'),
(39, '012', 'fanta', '250ml', 1, 1, 20, 0, 17, '2021-03-09'),
(40, '012', 'fanta', '250ml', 1, 1, 20, 0, 17, '2021-03-09'),
(41, '456', 'coco powder', '500g', 1, 1, 50, 9, 17, '2021-03-03'),
(42, '456', 'coco powder', '500g', 1, 1, 50, 9, 17, '2021-03-03'),
(43, '456', 'coco powder', '500g', 1, 1, 50, 9, 17, '2021-03-03'),
(44, '456', 'coco powder', '500g', 1, 1, 50, 9, 17, '2021-03-03'),
(45, '456', 'coco powder', '500g', 1, 1, 50, 9, 17, '2021-03-03'),
(46, '456', 'coco powder', '500g', 1, 1, 50, 9, 17, '2021-03-03'),
(47, '456', 'coco powder', '500g', 1, 1, 50, 9, 17, '2021-03-03'),
(48, '456', 'coco powder', '500g', 1, 1, 50, 9, 17, '2021-03-03'),
(49, '456', 'coco powder', '500g', 1, 1, 50, 9, 17, '2021-03-03'),
(50, '456', 'coco powder', '500g', 1, 1, 50, 9, 17, '2021-03-03'),
(51, '456', 'coco powder', '500g', 1, 1, 50, 9, 17, '2021-03-03'),
(52, '456', 'coco powder', '500g', 1, 1, 50, 9, 17, '2021-03-03'),
(53, '456', 'coco powder', '500g', 1, 1, 50, 9, 17, '2021-03-03'),
(54, '456', 'coco powder', '500g', 1, 1, 50, 9, 17, '2021-03-03'),
(55, '456', 'coco powder', '500g', 1, 1, 50, 9, 17, '2021-03-03'),
(56, '456', 'coco powder', '500g', 1, 1, 50, 9, 17, '2021-03-03'),
(57, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(58, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(59, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(60, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(61, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(62, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(63, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(64, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(65, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(66, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(67, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(68, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(69, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(70, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(71, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(72, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(73, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(74, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(75, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(76, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(77, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(78, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(79, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(80, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(81, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(82, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(83, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(84, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(85, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(86, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(87, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(88, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(89, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(90, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(91, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(92, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(93, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(94, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(95, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(96, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(97, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(98, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(99, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(100, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(101, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(102, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(103, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(104, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(105, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(106, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(107, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(108, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(109, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(110, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(111, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(112, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(113, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(114, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(115, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(116, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(117, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(118, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(119, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(120, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(121, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(122, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(123, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(124, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(125, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(126, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(127, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(128, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(129, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(130, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(131, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(132, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(133, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(134, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(135, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(136, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(137, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(138, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(139, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(140, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(141, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(142, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(143, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(144, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(145, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(146, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(147, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(148, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(149, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(150, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(151, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(152, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(153, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(154, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(155, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(156, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(157, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(158, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(159, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(160, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(161, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(162, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(163, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(164, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(165, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(166, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(167, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(168, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(169, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(170, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(171, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(172, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(173, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(174, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(175, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(176, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(177, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(178, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(179, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(180, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(181, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(182, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(183, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(184, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(185, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(186, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(187, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(188, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(189, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(190, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(191, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(192, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(193, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(194, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(195, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(196, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(197, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(198, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(199, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(200, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(201, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(202, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(203, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(204, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(205, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(206, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(207, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(208, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(209, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(210, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(211, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(212, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(213, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(214, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(215, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(216, '625', 'apple', 'Per piece', 1, 1, 100, 7, 17, '2021-03-19'),
(217, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(218, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(219, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(220, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(221, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(222, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(223, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(224, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(225, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(226, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(227, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(228, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(229, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(230, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(231, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(232, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(233, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(234, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(235, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(236, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(237, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(238, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(239, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(240, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(241, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(242, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(243, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(244, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(245, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(246, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(247, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(248, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(249, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(250, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(251, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(252, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(253, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(254, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(255, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(256, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(257, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(258, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(259, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(260, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(261, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(262, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(263, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(264, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(265, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(266, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(267, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(268, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(269, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(270, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(271, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(272, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(273, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(274, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(275, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(276, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(277, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(278, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(279, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(280, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(281, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(282, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(283, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(284, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(285, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(286, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(287, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(288, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(289, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(290, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(291, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(292, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(293, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(294, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(295, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(296, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(297, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(298, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(299, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(300, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(301, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(302, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(303, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(304, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(305, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(306, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(307, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(308, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(309, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(310, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(311, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(312, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(313, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(314, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(315, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(316, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(317, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(318, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(319, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(320, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(321, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(322, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(323, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(324, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(325, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(326, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(327, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(328, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(329, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(330, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(331, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(332, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(333, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(334, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(335, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(336, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(337, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(338, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(339, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(340, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(341, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(342, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(343, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(344, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(345, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(346, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(347, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(348, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(349, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(350, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(351, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(352, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(353, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(354, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(355, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(356, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(357, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(358, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(359, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(360, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(361, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(362, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(363, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(364, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(365, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(366, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(367, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(368, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(369, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(370, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(371, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(372, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(373, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(374, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(375, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(376, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(377, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(378, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(379, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(380, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(381, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(382, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(383, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(384, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(385, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(386, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(387, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(388, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(389, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(390, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(391, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(392, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(393, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(394, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(395, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(396, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(397, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(398, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(399, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(400, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(401, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(402, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(403, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(404, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(405, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(406, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(407, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(408, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(409, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(410, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(411, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(412, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(413, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(414, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(415, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(416, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(417, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(418, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(419, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(420, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(421, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(422, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(423, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(424, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(425, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(426, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(427, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(428, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(429, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(430, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(431, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(432, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(433, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(434, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(435, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(436, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(437, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(438, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(439, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(440, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(441, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(442, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(443, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(444, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(445, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(446, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(447, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(448, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(449, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(450, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(451, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(452, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(453, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(454, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(455, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(456, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(457, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(458, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(459, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(460, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(461, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(462, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(463, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(464, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(465, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(466, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(467, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(468, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(469, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(470, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(471, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(472, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(473, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(474, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(475, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(476, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(477, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(478, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(479, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(480, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(481, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(482, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(483, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(484, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(485, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(486, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(487, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(488, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(489, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(490, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(491, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(492, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(493, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(494, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(495, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(496, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(497, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(498, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(499, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(500, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(501, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(502, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(503, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(504, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(505, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(506, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(507, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(508, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(509, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(510, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(511, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(512, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(513, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(514, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(515, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(516, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(517, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(518, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(519, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(520, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(521, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(522, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(523, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(524, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(525, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(526, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(527, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(528, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(529, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(530, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(531, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(532, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(533, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(534, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(535, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(536, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(537, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(538, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(539, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(540, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(541, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(542, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(543, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(544, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(545, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(546, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(547, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(548, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(549, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(550, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(551, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(552, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(553, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(554, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(555, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(556, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(557, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(558, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(559, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(560, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(561, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(562, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(563, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(564, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(565, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(566, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(567, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(568, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(569, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(570, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(571, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(572, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(573, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(574, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(575, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(576, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(577, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(578, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(579, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(580, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(581, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(582, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(583, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(584, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(585, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(586, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(587, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(588, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(589, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(590, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(591, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(592, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(593, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(594, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(595, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(596, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(597, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(598, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(599, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(600, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(601, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(602, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(603, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(604, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(605, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(606, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(607, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(608, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(609, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(610, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(611, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(612, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(613, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(614, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(615, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(616, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(617, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(618, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(619, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(620, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(621, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(622, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(623, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(624, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(625, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(626, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(627, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(628, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(629, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(630, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(631, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(632, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(633, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(634, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(635, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(636, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(637, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(638, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(639, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(640, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(641, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(642, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(643, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(644, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(645, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(646, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(647, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(648, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(649, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(650, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(651, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(652, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(653, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(654, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(655, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(656, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(657, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(658, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(659, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(660, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(661, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(662, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(663, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(664, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(665, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(666, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(667, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(668, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(669, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(670, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(671, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(672, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(673, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(674, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(675, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(676, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(677, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(678, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(679, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(680, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(681, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(682, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(683, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(684, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(685, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(686, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(687, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(688, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(689, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(690, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(691, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(692, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(693, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(694, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(695, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(696, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(697, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(698, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(699, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(700, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(701, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(702, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(703, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(704, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(705, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(706, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(707, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(708, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(709, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(710, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(711, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(712, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(713, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(714, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(715, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(716, '825', 'pran milk', 'per litter ', 1, 1, 40, 2, 17, '2021-03-04'),
(717, '3485', 'Fair&lovely', 'cosmetics ', 1, 1, 100, 5, 17, '2021-03-12'),
(718, '3485', 'Fair&lovely', 'cosmetics ', 1, 1, 100, 5, 17, '2021-03-12'),
(719, '3485', 'Fair&lovely', 'cosmetics ', 1, 1, 100, 5, 17, '2021-03-12'),
(720, '3485', 'Fair&lovely', 'cosmetics ', 1, 1, 100, 5, 17, '2021-03-12'),
(721, '3485', 'Fair&lovely', 'cosmetics ', 1, 1, 100, 5, 17, '2021-03-12'),
(722, '3485', 'Fair&lovely', 'cosmetics ', 1, 1, 100, 5, 17, '2021-03-12'),
(723, '3485', 'Fair&lovely', 'cosmetics ', 1, 1, 100, 5, 17, '2021-03-12'),
(724, '3485', 'Fair&lovely', 'cosmetics ', 1, 1, 100, 5, 17, '2021-03-12'),
(725, '3485', 'Fair&lovely', 'cosmetics ', 1, 1, 100, 5, 17, '2021-03-12'),
(726, '3485', 'Fair&lovely', 'cosmetics ', 1, 1, 100, 5, 17, '2021-03-12'),
(727, '3485', 'Fair&lovely', 'cosmetics ', 1, 1, 100, 5, 17, '2021-03-12'),
(728, '3485', 'Fair&lovely', 'cosmetics ', 1, 1, 100, 5, 17, '2021-03-12'),
(729, '3485', 'Fair&lovely', 'cosmetics ', 1, 1, 100, 5, 17, '2021-03-12'),
(730, '3485', 'Fair&lovely', 'cosmetics ', 1, 1, 100, 5, 17, '2021-03-12'),
(731, '3485', 'Fair&lovely', 'cosmetics ', 1, 1, 100, 5, 17, '2021-03-12'),
(732, '3485', 'Fair&lovely', 'cosmetics ', 1, 1, 100, 5, 17, '2021-03-12'),
(733, '3485', 'Fair&lovely', 'cosmetics ', 1, 1, 100, 5, 17, '2021-03-12'),
(734, '3485', 'Fair&lovely', 'cosmetics ', 1, 1, 100, 5, 17, '2021-03-12'),
(735, '3485', 'Fair&lovely', 'cosmetics ', 1, 1, 100, 5, 17, '2021-03-12'),
(736, '3485', 'Fair&lovely', 'cosmetics ', 1, 1, 100, 5, 17, '2021-03-12');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SUPPLIER_ID` int(11) NOT NULL,
  `COMPANY_NAME` varchar(50) DEFAULT NULL,
  `LOCATION_ID` int(11) NOT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SUPPLIER_ID`, `COMPANY_NAME`, `LOCATION_ID`, `PHONE_NUMBER`) VALUES
(17, 'vdfsvdfggg', 159, '5345665'),
(18, 'Dreambazar ltd.', 160, '01546327875');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `TRANS_ID` int(50) NOT NULL,
  `CUST_ID` int(11) DEFAULT NULL,
  `NUMOFITEMS` varchar(250) NOT NULL,
  `SUBTOTAL` varchar(50) NOT NULL,
  `LESSVAT` varchar(50) NOT NULL,
  `NETVAT` varchar(50) NOT NULL,
  `ADDVAT` varchar(50) NOT NULL,
  `GRANDTOTAL` varchar(250) NOT NULL,
  `CASH` varchar(250) NOT NULL,
  `DATE` varchar(50) NOT NULL,
  `TRANS_D_ID` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`TRANS_ID`, `CUST_ID`, `NUMOFITEMS`, `SUBTOTAL`, `LESSVAT`, `NETVAT`, `ADDVAT`, `GRANDTOTAL`, `CASH`, `DATE`, `TRANS_D_ID`) VALUES
(3, 16, '3', '456,982.00', '48,962.36', '408,019.64', '48,962.36', '456,982.00', '500000', '2019-03-18', '0318160336'),
(4, 11, '2', '1,967.00', '210.75', '1,756.25', '210.75', '1,967.00', '2000', '2019-03-18', '0318160622'),
(5, 14, '1', '550.00', '58.93', '491.07', '58.93', '550.00', '550', '2019-03-18', '0318170309'),
(6, 15, '1', '77,850.00', '8,341.07', '69,508.93', '8,341.07', '77,850.00', '80000', '2019-03-18', '0318170352'),
(7, 16, '1', '1,718.00', '184.07', '1,533.93', '184.07', '1,718.00', '2000', '2019-03-18', '0318170511'),
(8, 16, '1', '1,718.00', '184.07', '1,533.93', '184.07', '1,718.00', '2000', '2019-03-18', '0318170524'),
(9, 14, '1', '1,718.00', '184.07', '1,533.93', '184.07', '1,718.00', '2000', '2019-03-18', '0318170551'),
(10, 11, '1', '289.00', '30.96', '258.04', '30.96', '289.00', '500', '2019-03-18', '0318170624'),
(11, 9, '2', '1,148.00', '123.00', '1,025.00', '123.00', '1,148.00', '2000', '2019-03-18', '0318170825'),
(12, 9, '1', '5,500.00', '589.29', '4,910.71', '589.29', '5,500.00', '6000', '2019-03-18 19:40 pm', '0318194016'),
(13, 14, '1', '550.00', '58.93', '491.07', '58.93', '550.00', '1000', '2020-12-30 03:16 am', '123031649'),
(14, 14, '1', '550.00', '58.93', '491.07', '58.93', '550.00', '550', '2020-12-30 22:57 pm', '1230225726'),
(15, 17, '1', '550.00', '58.93', '491.07', '58.93', '550.00', '550', '2021-01-01 19:40 pm', '0101194046'),
(16, 1, '1', '20.00', '2.14', '17.86', '2.14', '20.00', '20', '2021-03-21 06:20 am', '032162059'),
(17, 1, '1', '20.00', '2.14', '17.86', '2.14', '20.00', '20', '2021-03-21 06:27 am', '032162857'),
(18, 2, '2', '60.00', '6.43', '53.57', '6.43', '60.00', '20', '2021-04-20 17:59 pm', '0420180012'),
(19, 0, '0', '', '', '', '', '', '20', '', '0420180100'),
(20, 0, '0', '', '', '', '', '', '20', '', '0420180122');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `ID` int(11) NOT NULL,
  `TRANS_D_ID` varchar(250) NOT NULL,
  `PRODUCTS` varchar(250) NOT NULL,
  `QTY` varchar(250) NOT NULL,
  `PRICE` varchar(250) NOT NULL,
  `EMPLOYEE` varchar(250) NOT NULL,
  `ROLE` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`ID`, `TRANS_D_ID`, `PRODUCTS`, `QTY`, `PRICE`, `EMPLOYEE`, `ROLE`) VALUES
(7, '0318160336', 'Lenovo ideapad 20059', '2', '32999', 'Prince Ly', 'Manager'),
(8, '0318160336', 'Predator Helios 300 Gaming Laptop', '5', '77850', 'Prince Ly', 'Manager'),
(9, '0318160336', 'A4tech OP-720', '6', '289', 'Prince Ly', 'Manager'),
(10, '0318160622', 'Newmen E120', '2', '550', 'Prince Ly', 'Manager'),
(11, '0318160622', 'A4tech OP-720', '3', '289', 'Prince Ly', 'Manager'),
(12, '0318170309', 'Newmen E120', '1', '550', 'Prince Ly', 'Manager'),
(13, '0318170352', 'Predator Helios 300 Gaming Laptop', '1', '77850', 'Prince Ly', 'Manager'),
(14, '0318170511', 'Fantech EG1', '2', '859', 'Prince Ly', 'Manager'),
(15, '0318170524', 'Fantech EG1', '2', '859', 'Prince Ly', 'Manager'),
(16, '0318170551', 'Fantech EG1', '2', '859', 'Prince Ly', 'Manager'),
(17, '0318170624', 'A4tech OP-720', '1', '289', 'Prince Ly', 'Manager'),
(18, '0318170825', 'A4tech OP-720', '1', '289', 'Prince Ly', 'Manager'),
(19, '0318170825', 'Fantech EG1', '1', '859', 'Prince Ly', 'Manager'),
(20, '0318194016', 'Newmen E120', '10', '550', 'Josuey', 'Cashier'),
(21, '123031649', 'Newmen E120', '1', '550', 'Josuey', 'Cashier'),
(22, '1230225726', 'Newmen E120', '1', '550', 'Prince Ly', 'Manager'),
(23, '0101194046', 'Newmen E120', '1', '550', 'Prince Ly', 'Manager'),
(24, '032162059', 'fanta', '1', '20', 'Test', 'Manager'),
(25, '032162857', 'fanta', '1', '20', 'Test', 'Manager'),
(26, '0420180012', 'Cocacola', '1', '20', 'Test', 'Manager'),
(27, '0420180012', 'fanta', '2', '20', 'Test', 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `TYPE_ID` int(11) NOT NULL,
  `TYPE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`TYPE_ID`, `TYPE`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `EMPLOYEE_ID` int(11) DEFAULT NULL,
  `USERNAME` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `TYPE_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `EMPLOYEE_ID`, `USERNAME`, `PASSWORD`, `TYPE_ID`) VALUES
(1, 1, 'Admin', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 1),
(7, 2, 'test', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 2),
(9, 4, 'mncpdrnl', '8cb2237d0679ca88db6464eac60da96345513964', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CATEGORY_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUST_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EMPLOYEE_ID`),
  ADD UNIQUE KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`),
  ADD UNIQUE KEY `PHONE_NUMBER` (`PHONE_NUMBER`),
  ADD KEY `LOCATION_ID` (`LOCATION_ID`),
  ADD KEY `JOB_ID` (`JOB_ID`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`JOB_ID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`LOCATION_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD UNIQUE KEY `PHONE_NUMBER` (`PHONE_NUMBER`),
  ADD KEY `LOCATION_ID` (`LOCATION_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`PRODUCT_ID`),
  ADD KEY `CATEGORY_ID` (`CATEGORY_ID`),
  ADD KEY `SUPPLIER_ID` (`SUPPLIER_ID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SUPPLIER_ID`),
  ADD KEY `LOCATION_ID` (`LOCATION_ID`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`TRANS_ID`),
  ADD KEY `TRANS_DETAIL_ID` (`TRANS_D_ID`),
  ADD KEY `CUST_ID` (`CUST_ID`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TRANS_D_ID` (`TRANS_D_ID`) USING BTREE;

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`TYPE_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TYPE_ID` (`TYPE_ID`),
  ADD KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CATEGORY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CUST_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EMPLOYEE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `LOCATION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `PRODUCT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=737;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SUPPLIER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `TRANS_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`JOB_ID`) REFERENCES `job` (`JOB_ID`);

--
-- Constraints for table `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`CATEGORY_ID`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`SUPPLIER_ID`) REFERENCES `supplier` (`SUPPLIER_ID`);

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
