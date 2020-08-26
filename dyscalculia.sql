-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2019 at 05:06 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dyscalculia`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `model_view`
-- (See below for the actual view)
--
CREATE TABLE `model_view` (
`p_id` int(11)
,`p_age` float
,`p_grade` int(11)
,`p_iq` int(11)
,`5_01` int(2)
,`5_02` int(2)
,`5_03` int(2)
,`5_04` int(2)
,`5_05` int(2)
,`5_06` int(2)
,`5_07` int(2)
,`5_08` int(2)
,`5_09` int(2)
,`5_10` int(2)
,`5_11` int(2)
,`5_12` int(2)
,`5_13` int(2)
,`5_14` int(2)
,`5_15` int(2)
,`5_16` int(2)
,`5_17` int(2)
,`5_18` int(2)
,`5_19` int(2)
,`5_20` int(3)
,`5_21` int(2)
,`5_22` int(2)
,`5_23` int(2)
,`5_24` int(2)
,`5_25` int(2)
,`5_26` int(2)
,`5_27` int(3)
,`5_28` int(2)
,`5_29` int(2)
,`5_30` int(2)
,`5_31` int(2)
,`5_32` int(2)
,`5_33` int(2)
,`5_34` int(2)
,`5_35` int(2)
,`5_36` int(2)
,`5_37` int(2)
,`5_38` int(3)
,`5_39` int(2)
,`5_40` int(3)
,`5_41` int(2)
,`5_42` int(2)
,`5_43` int(2)
,`5_44` int(2)
,`5_45` int(2)
,`6_Correct` int(3)
,`6_incorrect` int(2)
,`6_totalAns` int(3)
,`10_01` int(1)
,`10_02` int(1)
,`10_03` int(1)
,`10_04` int(1)
,`10_05` int(1)
,`10_06` int(1)
,`10_07` int(1)
,`10_08` int(1)
,`10_09` int(1)
,`10_10` int(1)
,`10_11` int(1)
,`10_12` int(2)
,`10_13` int(2)
,`10_14` int(2)
,`10_15` int(2)
,`10_16` int(2)
,`10_17` int(2)
,`10_18` int(2)
,`10_19` int(2)
,`10_20` int(2)
,`10_21` int(2)
,`10_22` int(2)
,`10_23` int(2)
,`10_24` int(2)
,`10_25` int(2)
,`10_26` int(2)
,`10_27` int(2)
,`10_28` int(2)
,`10_29` int(2)
,`10_30` int(2)
,`10_31` int(2)
,`10_32` int(2)
,`10_33` int(2)
,`10_34` int(2)
,`10_35` int(2)
,`10_36` int(2)
,`10_37` int(2)
,`10_38` int(2)
,`10_39` int(2)
,`10_40` int(2)
,`10_41` varchar(2)
,`10_42` int(2)
,`10_43` int(2)
,`10_44` int(2)
,`10_45` int(2)
,`10_46` int(2)
,`10_47` int(2)
,`10_48` int(2)
,`10_49` int(2)
,`10_50` int(2)
,`10_51` int(2)
,`10_52` int(2)
,`10_53` int(2)
,`10_54` int(2)
,`10_55` int(2)
,`10_56` int(2)
,`10_57` int(2)
,`10_58` int(2)
,`10_59` int(2)
,`10_60` int(2)
,`10_61` int(2)
,`10_62` int(2)
,`10_63` int(2)
,`18A_01` int(1)
,`18A_02` int(1)
,`18A_03` int(1)
,`18A_04` int(1)
,`18A_05` int(2)
,`18A_06` int(1)
,`18A_07` int(1)
,`18A_08` int(2)
,`18A_09` int(1)
,`18A_10` int(2)
,`18A_11` int(2)
,`18A_12` int(2)
,`18A_13` int(2)
,`18A_14` int(2)
,`18A_15` int(2)
,`18A_16` int(2)
,`18A_17` int(2)
,`18A_18` int(2)
,`18A_19` int(2)
,`18A_20` int(2)
,`18A_21` int(2)
,`18A_22` int(2)
,`18A_23` int(2)
,`18A_24` int(2)
,`18A_25` int(2)
,`18A_26` int(2)
,`18A_27` int(2)
,`18A_28` int(2)
,`18A_29` int(2)
,`18A_30` int(2)
,`18A_31` int(2)
,`18A_32` int(2)
,`18A_33` int(2)
,`18A_34` int(2)
,`18B_01` int(1)
,`18B_02` int(1)
,`18B_03` int(1)
,`18B_04` int(1)
,`18B_05` int(2)
,`18B_06` int(1)
,`18B_07` int(2)
,`18B_08` int(2)
,`18B_09` int(2)
,`18B_10` int(2)
,`18B_11` int(2)
,`18B_12` int(2)
,`18B_13` int(2)
,`18B_14` int(2)
,`18B_15` int(2)
,`18B_16` int(2)
,`18B_17` int(2)
,`18B_18` int(2)
,`18B_19` int(2)
,`18B_20` int(2)
,`18B_21` int(2)
,`18B_22` int(2)
,`18B_23` int(2)
);

-- --------------------------------------------------------

--
-- Table structure for table `patient_info`
--

CREATE TABLE `patient_info` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_iq` int(11) NOT NULL,
  `p_age` float NOT NULL,
  `p_grade` int(11) NOT NULL,
  `p_gender` int(1) NOT NULL,
  `p_cert` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `predicted` float DEFAULT NULL,
  `expected` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test5`
--

CREATE TABLE `test5` (
  `test5_id` int(11) NOT NULL,
  `5_01` int(2) DEFAULT NULL,
  `5_02` int(2) DEFAULT NULL,
  `5_03` int(2) DEFAULT NULL,
  `5_04` int(2) DEFAULT NULL,
  `5_05` int(2) DEFAULT NULL,
  `5_06` int(2) DEFAULT NULL,
  `5_07` int(2) DEFAULT NULL,
  `5_08` int(2) DEFAULT NULL,
  `5_09` int(2) DEFAULT NULL,
  `5_10` int(2) DEFAULT NULL,
  `5_11` int(2) DEFAULT NULL,
  `5_12` int(2) DEFAULT NULL,
  `5_13` int(2) DEFAULT NULL,
  `5_14` int(2) DEFAULT NULL,
  `5_15` int(2) DEFAULT NULL,
  `5_16` int(2) DEFAULT NULL,
  `5_17` int(2) DEFAULT NULL,
  `5_18` int(2) DEFAULT NULL,
  `5_19` int(2) DEFAULT NULL,
  `5_20` int(3) DEFAULT NULL,
  `5_21` int(2) DEFAULT NULL,
  `5_22` int(2) DEFAULT NULL,
  `5_23` int(2) DEFAULT NULL,
  `5_24` int(2) DEFAULT NULL,
  `5_25` int(2) DEFAULT NULL,
  `5_26` int(2) DEFAULT NULL,
  `5_27` int(3) DEFAULT NULL,
  `5_28` int(2) DEFAULT NULL,
  `5_29` int(2) DEFAULT NULL,
  `5_30` int(2) DEFAULT NULL,
  `5_31` int(2) DEFAULT NULL,
  `5_32` int(2) DEFAULT NULL,
  `5_33` int(2) DEFAULT NULL,
  `5_34` int(2) DEFAULT NULL,
  `5_35` int(2) DEFAULT NULL,
  `5_36` int(2) DEFAULT NULL,
  `5_37` int(2) DEFAULT NULL,
  `5_38` int(3) DEFAULT NULL,
  `5_39` int(2) DEFAULT NULL,
  `5_40` int(3) DEFAULT NULL,
  `5_41` int(2) DEFAULT NULL,
  `5_42` int(2) DEFAULT NULL,
  `5_43` int(2) DEFAULT NULL,
  `5_44` int(2) DEFAULT NULL,
  `5_45` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- --------------------------------------------------------

--
-- Table structure for table `test6`
--

CREATE TABLE `test6` (
  `test6_id` int(11) DEFAULT NULL,
  `6_Correct` int(3) DEFAULT NULL,
  `6_incorrect` int(2) DEFAULT NULL,
  `6_totalAns` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `test10`
--

CREATE TABLE `test10` (
  `test10_id` int(11) DEFAULT NULL,
  `10_01` int(1) DEFAULT NULL,
  `10_02` int(1) DEFAULT NULL,
  `10_03` int(1) DEFAULT NULL,
  `10_04` int(1) DEFAULT NULL,
  `10_05` int(1) DEFAULT NULL,
  `10_06` int(1) DEFAULT NULL,
  `10_07` int(1) DEFAULT NULL,
  `10_08` int(1) DEFAULT NULL,
  `10_09` int(1) DEFAULT NULL,
  `10_10` int(1) DEFAULT NULL,
  `10_11` int(1) DEFAULT NULL,
  `10_12` int(2) DEFAULT NULL,
  `10_13` int(2) DEFAULT NULL,
  `10_14` int(2) DEFAULT NULL,
  `10_15` int(2) DEFAULT NULL,
  `10_16` int(2) DEFAULT NULL,
  `10_17` int(2) DEFAULT NULL,
  `10_18` int(2) DEFAULT NULL,
  `10_19` int(2) DEFAULT NULL,
  `10_20` int(2) DEFAULT NULL,
  `10_21` int(2) DEFAULT NULL,
  `10_22` int(2) DEFAULT NULL,
  `10_23` int(2) DEFAULT NULL,
  `10_24` int(2) DEFAULT NULL,
  `10_25` int(2) DEFAULT NULL,
  `10_26` int(2) DEFAULT NULL,
  `10_27` int(2) DEFAULT NULL,
  `10_28` int(2) DEFAULT NULL,
  `10_29` int(2) DEFAULT NULL,
  `10_30` int(2) DEFAULT NULL,
  `10_31` int(2) DEFAULT NULL,
  `10_32` int(2) DEFAULT NULL,
  `10_33` int(2) DEFAULT NULL,
  `10_34` int(2) DEFAULT NULL,
  `10_35` int(2) DEFAULT NULL,
  `10_36` int(2) DEFAULT NULL,
  `10_37` int(2) DEFAULT NULL,
  `10_38` int(2) DEFAULT NULL,
  `10_39` int(2) DEFAULT NULL,
  `10_40` int(2) DEFAULT NULL,
  `10_41` varchar(2) DEFAULT NULL,
  `10_42` int(2) DEFAULT NULL,
  `10_43` int(2) DEFAULT NULL,
  `10_44` int(2) DEFAULT NULL,
  `10_45` int(2) DEFAULT NULL,
  `10_46` int(2) DEFAULT NULL,
  `10_47` int(2) DEFAULT NULL,
  `10_48` int(2) DEFAULT NULL,
  `10_49` int(2) DEFAULT NULL,
  `10_50` int(2) DEFAULT NULL,
  `10_51` int(2) DEFAULT NULL,
  `10_52` int(2) DEFAULT NULL,
  `10_53` int(2) DEFAULT NULL,
  `10_54` int(2) DEFAULT NULL,
  `10_55` int(2) DEFAULT NULL,
  `10_56` int(2) DEFAULT NULL,
  `10_57` int(2) DEFAULT NULL,
  `10_58` int(2) DEFAULT NULL,
  `10_59` int(2) DEFAULT NULL,
  `10_60` int(2) DEFAULT NULL,
  `10_61` int(2) DEFAULT NULL,
  `10_62` int(2) DEFAULT NULL,
  `10_63` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `test18a`
--

CREATE TABLE `test18a` (
  `test18a_id` int(11) DEFAULT NULL,
  `18A_01` int(1) DEFAULT NULL,
  `18A_02` int(1) DEFAULT NULL,
  `18A_03` int(1) DEFAULT NULL,
  `18A_04` int(1) DEFAULT NULL,
  `18A_05` int(2) DEFAULT NULL,
  `18A_06` int(1) DEFAULT NULL,
  `18A_07` int(1) DEFAULT NULL,
  `18A_08` int(2) DEFAULT NULL,
  `18A_09` int(1) DEFAULT NULL,
  `18A_10` int(2) DEFAULT NULL,
  `18A_11` int(2) DEFAULT NULL,
  `18A_12` int(2) DEFAULT NULL,
  `18A_13` int(2) DEFAULT NULL,
  `18A_14` int(2) DEFAULT NULL,
  `18A_15` int(2) DEFAULT NULL,
  `18A_16` int(2) DEFAULT NULL,
  `18A_17` int(2) DEFAULT NULL,
  `18A_18` int(2) DEFAULT NULL,
  `18A_19` int(2) DEFAULT NULL,
  `18A_20` int(2) DEFAULT NULL,
  `18A_21` int(2) DEFAULT NULL,
  `18A_22` int(2) DEFAULT NULL,
  `18A_23` int(2) DEFAULT NULL,
  `18A_24` int(2) DEFAULT NULL,
  `18A_25` int(2) DEFAULT NULL,
  `18A_26` int(2) DEFAULT NULL,
  `18A_27` int(2) DEFAULT NULL,
  `18A_28` int(2) DEFAULT NULL,
  `18A_29` int(2) DEFAULT NULL,
  `18A_30` int(2) DEFAULT NULL,
  `18A_31` int(2) DEFAULT NULL,
  `18A_32` int(2) DEFAULT NULL,
  `18A_33` int(2) DEFAULT NULL,
  `18A_34` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `test18b`
--

CREATE TABLE `test18b` (
  `test18b_id` int(11) DEFAULT NULL,
  `18B_01` int(1) DEFAULT NULL,
  `18B_02` int(1) DEFAULT NULL,
  `18B_03` int(1) DEFAULT NULL,
  `18B_04` int(1) DEFAULT NULL,
  `18B_05` int(2) DEFAULT NULL,
  `18B_06` int(1) DEFAULT NULL,
  `18B_07` int(2) DEFAULT NULL,
  `18B_08` int(2) DEFAULT NULL,
  `18B_09` int(2) DEFAULT NULL,
  `18B_10` int(2) DEFAULT NULL,
  `18B_11` int(2) DEFAULT NULL,
  `18B_12` int(2) DEFAULT NULL,
  `18B_13` int(2) DEFAULT NULL,
  `18B_14` int(2) DEFAULT NULL,
  `18B_15` int(2) DEFAULT NULL,
  `18B_16` int(2) DEFAULT NULL,
  `18B_17` int(2) DEFAULT NULL,
  `18B_18` int(2) DEFAULT NULL,
  `18B_19` int(2) DEFAULT NULL,
  `18B_20` int(2) DEFAULT NULL,
  `18B_21` int(2) DEFAULT NULL,
  `18B_22` int(2) DEFAULT NULL,
  `18B_23` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Stand-in structure for view `test_view`
-- (See below for the actual view)
--
CREATE TABLE `test_view` (
`p_age` float
,`p_grade` int(11)
,`p_id` int(11)
,`test5_id` int(11)
,`5_01` int(2)
,`5_02` int(2)
,`5_03` int(2)
,`5_04` int(2)
,`5_05` int(2)
,`5_06` int(2)
,`5_07` int(2)
,`5_08` int(2)
,`5_09` int(2)
,`5_10` int(2)
,`5_11` int(2)
,`5_12` int(2)
,`5_13` int(2)
,`5_14` int(2)
,`5_15` int(2)
,`5_16` int(2)
,`5_17` int(2)
,`5_18` int(2)
,`5_19` int(2)
,`5_20` int(3)
,`5_21` int(2)
,`5_22` int(2)
,`5_23` int(2)
,`5_24` int(2)
,`5_25` int(2)
,`5_26` int(2)
,`5_27` int(3)
,`5_28` int(2)
,`5_29` int(2)
,`5_30` int(2)
,`5_31` int(2)
,`5_32` int(2)
,`5_33` int(2)
,`5_34` int(2)
,`5_35` int(2)
,`5_36` int(2)
,`5_37` int(2)
,`5_38` int(3)
,`5_39` int(2)
,`5_40` int(3)
,`5_41` int(2)
,`5_42` int(2)
,`5_43` int(2)
,`5_44` int(2)
,`5_45` int(2)
,`test6_id` int(11)
,`6_Correct` int(3)
,`6_incorrect` int(2)
,`6_totalAns` int(3)
,`test10_id` int(11)
,`10_01` int(1)
,`10_02` int(1)
,`10_03` int(1)
,`10_04` int(1)
,`10_05` int(1)
,`10_06` int(1)
,`10_07` int(1)
,`10_08` int(1)
,`10_09` int(1)
,`10_10` int(1)
,`10_11` int(1)
,`10_12` int(2)
,`10_13` int(2)
,`10_14` int(2)
,`10_15` int(2)
,`10_16` int(2)
,`10_17` int(2)
,`10_18` int(2)
,`10_19` int(2)
,`10_20` int(2)
,`10_21` int(2)
,`10_22` int(2)
,`10_23` int(2)
,`10_24` int(2)
,`10_25` int(2)
,`10_26` int(2)
,`10_27` int(2)
,`10_28` int(2)
,`10_29` int(2)
,`10_30` int(2)
,`10_31` int(2)
,`10_32` int(2)
,`10_33` int(2)
,`10_34` int(2)
,`10_35` int(2)
,`10_36` int(2)
,`10_37` int(2)
,`10_38` int(2)
,`10_39` int(2)
,`10_40` int(2)
,`10_41` varchar(2)
,`10_42` int(2)
,`10_43` int(2)
,`10_44` int(2)
,`10_45` int(2)
,`10_46` int(2)
,`10_47` int(2)
,`10_48` int(2)
,`10_49` int(2)
,`10_50` int(2)
,`10_51` int(2)
,`10_52` int(2)
,`10_53` int(2)
,`10_54` int(2)
,`10_55` int(2)
,`10_56` int(2)
,`10_57` int(2)
,`10_58` int(2)
,`10_59` int(2)
,`10_60` int(2)
,`10_61` int(2)
,`10_62` int(2)
,`10_63` int(2)
,`test18a_id` int(11)
,`18A_01` int(1)
,`18A_02` int(1)
,`18A_03` int(1)
,`18A_04` int(1)
,`18A_05` int(2)
,`18A_06` int(1)
,`18A_07` int(1)
,`18A_08` int(2)
,`18A_09` int(1)
,`18A_10` int(2)
,`18A_11` int(2)
,`18A_12` int(2)
,`18A_13` int(2)
,`18A_14` int(2)
,`18A_15` int(2)
,`18A_16` int(2)
,`18A_17` int(2)
,`18A_18` int(2)
,`18A_19` int(2)
,`18A_20` int(2)
,`18A_21` int(2)
,`18A_22` int(2)
,`18A_23` int(2)
,`18A_24` int(2)
,`18A_25` int(2)
,`18A_26` int(2)
,`18A_27` int(2)
,`18A_28` int(2)
,`18A_29` int(2)
,`18A_30` int(2)
,`18A_31` int(2)
,`18A_32` int(2)
,`18A_33` int(2)
,`18A_34` int(2)
,`test18b_id` int(11)
,`18B_01` int(1)
,`18B_02` int(1)
,`18B_03` int(1)
,`18B_04` int(1)
,`18B_05` int(2)
,`18B_06` int(1)
,`18B_07` int(2)
,`18B_08` int(2)
,`18B_09` int(2)
,`18B_10` int(2)
,`18B_11` int(2)
,`18B_12` int(2)
,`18B_13` int(2)
,`18B_14` int(2)
,`18B_15` int(2)
,`18B_16` int(2)
,`18B_17` int(2)
,`18B_18` int(2)
,`18B_19` int(2)
,`18B_20` int(2)
,`18B_21` int(2)
,`18B_22` int(2)
,`18B_23` int(2)
);

-- --------------------------------------------------------

--
-- Table structure for table `wrat`
--

CREATE TABLE `wrat` (
  `wrat_id` int(11) DEFAULT NULL,
  `R_01` int(2) DEFAULT NULL,
  `R_02` int(2) DEFAULT NULL,
  `R_03` int(2) DEFAULT NULL,
  `R_04` int(2) DEFAULT NULL,
  `R_05` int(2) DEFAULT NULL,
  `R_06` int(2) DEFAULT NULL,
  `R_07` int(2) DEFAULT NULL,
  `R_08` int(2) DEFAULT NULL,
  `R_09` int(2) DEFAULT NULL,
  `R_10` int(2) DEFAULT NULL,
  `R_11` int(2) DEFAULT NULL,
  `R_12` int(2) DEFAULT NULL,
  `R_13` int(2) DEFAULT NULL,
  `R_14` int(2) DEFAULT NULL,
  `R_15` int(2) DEFAULT NULL,
  `R_16` int(2) DEFAULT NULL,
  `R_17` int(2) DEFAULT NULL,
  `R_18` int(2) DEFAULT NULL,
  `R_19` int(2) DEFAULT NULL,
  `R_20` int(2) DEFAULT NULL,
  `R_21` int(2) DEFAULT NULL,
  `R_22` int(2) DEFAULT NULL,
  `R_23` int(2) DEFAULT NULL,
  `R_24` int(2) DEFAULT NULL,
  `R_25` int(3) DEFAULT NULL,
  `R_26` int(2) DEFAULT NULL,
  `R_27` int(2) DEFAULT NULL,
  `R_28` int(2) DEFAULT NULL,
  `R_29` int(2) DEFAULT NULL,
  `R_30` int(2) DEFAULT NULL,
  `R_31` int(2) DEFAULT NULL,
  `R_32` int(2) DEFAULT NULL,
  `R_33` int(2) DEFAULT NULL,
  `R_34` int(2) DEFAULT NULL,
  `R_35` int(2) DEFAULT NULL,
  `R_36` int(2) DEFAULT NULL,
  `R_37` int(2) DEFAULT NULL,
  `R_38` int(2) DEFAULT NULL,
  `R_39` int(2) DEFAULT NULL,
  `R_40` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure for view `model_view`
--
DROP TABLE IF EXISTS `model_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `model_view`  AS  select `patient_info`.`p_id` AS `p_id`,`patient_info`.`p_age` AS `p_age`,`patient_info`.`p_grade` AS `p_grade`,`patient_info`.`p_iq` AS `p_iq`,`test5`.`5_01` AS `5_01`,`test5`.`5_02` AS `5_02`,`test5`.`5_03` AS `5_03`,`test5`.`5_04` AS `5_04`,`test5`.`5_05` AS `5_05`,`test5`.`5_06` AS `5_06`,`test5`.`5_07` AS `5_07`,`test5`.`5_08` AS `5_08`,`test5`.`5_09` AS `5_09`,`test5`.`5_10` AS `5_10`,`test5`.`5_11` AS `5_11`,`test5`.`5_12` AS `5_12`,`test5`.`5_13` AS `5_13`,`test5`.`5_14` AS `5_14`,`test5`.`5_15` AS `5_15`,`test5`.`5_16` AS `5_16`,`test5`.`5_17` AS `5_17`,`test5`.`5_18` AS `5_18`,`test5`.`5_19` AS `5_19`,`test5`.`5_20` AS `5_20`,`test5`.`5_21` AS `5_21`,`test5`.`5_22` AS `5_22`,`test5`.`5_23` AS `5_23`,`test5`.`5_24` AS `5_24`,`test5`.`5_25` AS `5_25`,`test5`.`5_26` AS `5_26`,`test5`.`5_27` AS `5_27`,`test5`.`5_28` AS `5_28`,`test5`.`5_29` AS `5_29`,`test5`.`5_30` AS `5_30`,`test5`.`5_31` AS `5_31`,`test5`.`5_32` AS `5_32`,`test5`.`5_33` AS `5_33`,`test5`.`5_34` AS `5_34`,`test5`.`5_35` AS `5_35`,`test5`.`5_36` AS `5_36`,`test5`.`5_37` AS `5_37`,`test5`.`5_38` AS `5_38`,`test5`.`5_39` AS `5_39`,`test5`.`5_40` AS `5_40`,`test5`.`5_41` AS `5_41`,`test5`.`5_42` AS `5_42`,`test5`.`5_43` AS `5_43`,`test5`.`5_44` AS `5_44`,`test5`.`5_45` AS `5_45`,`test6`.`6_Correct` AS `6_Correct`,`test6`.`6_incorrect` AS `6_incorrect`,`test6`.`6_totalAns` AS `6_totalAns`,`test10`.`10_01` AS `10_01`,`test10`.`10_02` AS `10_02`,`test10`.`10_03` AS `10_03`,`test10`.`10_04` AS `10_04`,`test10`.`10_05` AS `10_05`,`test10`.`10_06` AS `10_06`,`test10`.`10_07` AS `10_07`,`test10`.`10_08` AS `10_08`,`test10`.`10_09` AS `10_09`,`test10`.`10_10` AS `10_10`,`test10`.`10_11` AS `10_11`,`test10`.`10_12` AS `10_12`,`test10`.`10_13` AS `10_13`,`test10`.`10_14` AS `10_14`,`test10`.`10_15` AS `10_15`,`test10`.`10_16` AS `10_16`,`test10`.`10_17` AS `10_17`,`test10`.`10_18` AS `10_18`,`test10`.`10_19` AS `10_19`,`test10`.`10_20` AS `10_20`,`test10`.`10_21` AS `10_21`,`test10`.`10_22` AS `10_22`,`test10`.`10_23` AS `10_23`,`test10`.`10_24` AS `10_24`,`test10`.`10_25` AS `10_25`,`test10`.`10_26` AS `10_26`,`test10`.`10_27` AS `10_27`,`test10`.`10_28` AS `10_28`,`test10`.`10_29` AS `10_29`,`test10`.`10_30` AS `10_30`,`test10`.`10_31` AS `10_31`,`test10`.`10_32` AS `10_32`,`test10`.`10_33` AS `10_33`,`test10`.`10_34` AS `10_34`,`test10`.`10_35` AS `10_35`,`test10`.`10_36` AS `10_36`,`test10`.`10_37` AS `10_37`,`test10`.`10_38` AS `10_38`,`test10`.`10_39` AS `10_39`,`test10`.`10_40` AS `10_40`,`test10`.`10_41` AS `10_41`,`test10`.`10_42` AS `10_42`,`test10`.`10_43` AS `10_43`,`test10`.`10_44` AS `10_44`,`test10`.`10_45` AS `10_45`,`test10`.`10_46` AS `10_46`,`test10`.`10_47` AS `10_47`,`test10`.`10_48` AS `10_48`,`test10`.`10_49` AS `10_49`,`test10`.`10_50` AS `10_50`,`test10`.`10_51` AS `10_51`,`test10`.`10_52` AS `10_52`,`test10`.`10_53` AS `10_53`,`test10`.`10_54` AS `10_54`,`test10`.`10_55` AS `10_55`,`test10`.`10_56` AS `10_56`,`test10`.`10_57` AS `10_57`,`test10`.`10_58` AS `10_58`,`test10`.`10_59` AS `10_59`,`test10`.`10_60` AS `10_60`,`test10`.`10_61` AS `10_61`,`test10`.`10_62` AS `10_62`,`test10`.`10_63` AS `10_63`,`test18a`.`18A_01` AS `18A_01`,`test18a`.`18A_02` AS `18A_02`,`test18a`.`18A_03` AS `18A_03`,`test18a`.`18A_04` AS `18A_04`,`test18a`.`18A_05` AS `18A_05`,`test18a`.`18A_06` AS `18A_06`,`test18a`.`18A_07` AS `18A_07`,`test18a`.`18A_08` AS `18A_08`,`test18a`.`18A_09` AS `18A_09`,`test18a`.`18A_10` AS `18A_10`,`test18a`.`18A_11` AS `18A_11`,`test18a`.`18A_12` AS `18A_12`,`test18a`.`18A_13` AS `18A_13`,`test18a`.`18A_14` AS `18A_14`,`test18a`.`18A_15` AS `18A_15`,`test18a`.`18A_16` AS `18A_16`,`test18a`.`18A_17` AS `18A_17`,`test18a`.`18A_18` AS `18A_18`,`test18a`.`18A_19` AS `18A_19`,`test18a`.`18A_20` AS `18A_20`,`test18a`.`18A_21` AS `18A_21`,`test18a`.`18A_22` AS `18A_22`,`test18a`.`18A_23` AS `18A_23`,`test18a`.`18A_24` AS `18A_24`,`test18a`.`18A_25` AS `18A_25`,`test18a`.`18A_26` AS `18A_26`,`test18a`.`18A_27` AS `18A_27`,`test18a`.`18A_28` AS `18A_28`,`test18a`.`18A_29` AS `18A_29`,`test18a`.`18A_30` AS `18A_30`,`test18a`.`18A_31` AS `18A_31`,`test18a`.`18A_32` AS `18A_32`,`test18a`.`18A_33` AS `18A_33`,`test18a`.`18A_34` AS `18A_34`,`test18b`.`18B_01` AS `18B_01`,`test18b`.`18B_02` AS `18B_02`,`test18b`.`18B_03` AS `18B_03`,`test18b`.`18B_04` AS `18B_04`,`test18b`.`18B_05` AS `18B_05`,`test18b`.`18B_06` AS `18B_06`,`test18b`.`18B_07` AS `18B_07`,`test18b`.`18B_08` AS `18B_08`,`test18b`.`18B_09` AS `18B_09`,`test18b`.`18B_10` AS `18B_10`,`test18b`.`18B_11` AS `18B_11`,`test18b`.`18B_12` AS `18B_12`,`test18b`.`18B_13` AS `18B_13`,`test18b`.`18B_14` AS `18B_14`,`test18b`.`18B_15` AS `18B_15`,`test18b`.`18B_16` AS `18B_16`,`test18b`.`18B_17` AS `18B_17`,`test18b`.`18B_18` AS `18B_18`,`test18b`.`18B_19` AS `18B_19`,`test18b`.`18B_20` AS `18B_20`,`test18b`.`18B_21` AS `18B_21`,`test18b`.`18B_22` AS `18B_22`,`test18b`.`18B_23` AS `18B_23` from (((((`test5` join `patient_info` on((`patient_info`.`p_id` = `test5`.`test5_id`))) join `test6` on((`patient_info`.`p_id` = `test6`.`test6_id`))) join `test10` on((`patient_info`.`p_id` = `test10`.`test10_id`))) join `test18a` on((`patient_info`.`p_id` = `test18a`.`test18a_id`))) join `test18b` on((`patient_info`.`p_id` = `test18b`.`test18b_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `test_view`
--
DROP TABLE IF EXISTS `test_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `test_view`  AS  select `patient_info`.`p_age` AS `p_age`,`patient_info`.`p_grade` AS `p_grade`,`patient_info`.`p_id` AS `p_id`,`test5`.`test5_id` AS `test5_id`,`test5`.`5_01` AS `5_01`,`test5`.`5_02` AS `5_02`,`test5`.`5_03` AS `5_03`,`test5`.`5_04` AS `5_04`,`test5`.`5_05` AS `5_05`,`test5`.`5_06` AS `5_06`,`test5`.`5_07` AS `5_07`,`test5`.`5_08` AS `5_08`,`test5`.`5_09` AS `5_09`,`test5`.`5_10` AS `5_10`,`test5`.`5_11` AS `5_11`,`test5`.`5_12` AS `5_12`,`test5`.`5_13` AS `5_13`,`test5`.`5_14` AS `5_14`,`test5`.`5_15` AS `5_15`,`test5`.`5_16` AS `5_16`,`test5`.`5_17` AS `5_17`,`test5`.`5_18` AS `5_18`,`test5`.`5_19` AS `5_19`,`test5`.`5_20` AS `5_20`,`test5`.`5_21` AS `5_21`,`test5`.`5_22` AS `5_22`,`test5`.`5_23` AS `5_23`,`test5`.`5_24` AS `5_24`,`test5`.`5_25` AS `5_25`,`test5`.`5_26` AS `5_26`,`test5`.`5_27` AS `5_27`,`test5`.`5_28` AS `5_28`,`test5`.`5_29` AS `5_29`,`test5`.`5_30` AS `5_30`,`test5`.`5_31` AS `5_31`,`test5`.`5_32` AS `5_32`,`test5`.`5_33` AS `5_33`,`test5`.`5_34` AS `5_34`,`test5`.`5_35` AS `5_35`,`test5`.`5_36` AS `5_36`,`test5`.`5_37` AS `5_37`,`test5`.`5_38` AS `5_38`,`test5`.`5_39` AS `5_39`,`test5`.`5_40` AS `5_40`,`test5`.`5_41` AS `5_41`,`test5`.`5_42` AS `5_42`,`test5`.`5_43` AS `5_43`,`test5`.`5_44` AS `5_44`,`test5`.`5_45` AS `5_45`,`test6`.`test6_id` AS `test6_id`,`test6`.`6_Correct` AS `6_Correct`,`test6`.`6_incorrect` AS `6_incorrect`,`test6`.`6_totalAns` AS `6_totalAns`,`test10`.`test10_id` AS `test10_id`,`test10`.`10_01` AS `10_01`,`test10`.`10_02` AS `10_02`,`test10`.`10_03` AS `10_03`,`test10`.`10_04` AS `10_04`,`test10`.`10_05` AS `10_05`,`test10`.`10_06` AS `10_06`,`test10`.`10_07` AS `10_07`,`test10`.`10_08` AS `10_08`,`test10`.`10_09` AS `10_09`,`test10`.`10_10` AS `10_10`,`test10`.`10_11` AS `10_11`,`test10`.`10_12` AS `10_12`,`test10`.`10_13` AS `10_13`,`test10`.`10_14` AS `10_14`,`test10`.`10_15` AS `10_15`,`test10`.`10_16` AS `10_16`,`test10`.`10_17` AS `10_17`,`test10`.`10_18` AS `10_18`,`test10`.`10_19` AS `10_19`,`test10`.`10_20` AS `10_20`,`test10`.`10_21` AS `10_21`,`test10`.`10_22` AS `10_22`,`test10`.`10_23` AS `10_23`,`test10`.`10_24` AS `10_24`,`test10`.`10_25` AS `10_25`,`test10`.`10_26` AS `10_26`,`test10`.`10_27` AS `10_27`,`test10`.`10_28` AS `10_28`,`test10`.`10_29` AS `10_29`,`test10`.`10_30` AS `10_30`,`test10`.`10_31` AS `10_31`,`test10`.`10_32` AS `10_32`,`test10`.`10_33` AS `10_33`,`test10`.`10_34` AS `10_34`,`test10`.`10_35` AS `10_35`,`test10`.`10_36` AS `10_36`,`test10`.`10_37` AS `10_37`,`test10`.`10_38` AS `10_38`,`test10`.`10_39` AS `10_39`,`test10`.`10_40` AS `10_40`,`test10`.`10_41` AS `10_41`,`test10`.`10_42` AS `10_42`,`test10`.`10_43` AS `10_43`,`test10`.`10_44` AS `10_44`,`test10`.`10_45` AS `10_45`,`test10`.`10_46` AS `10_46`,`test10`.`10_47` AS `10_47`,`test10`.`10_48` AS `10_48`,`test10`.`10_49` AS `10_49`,`test10`.`10_50` AS `10_50`,`test10`.`10_51` AS `10_51`,`test10`.`10_52` AS `10_52`,`test10`.`10_53` AS `10_53`,`test10`.`10_54` AS `10_54`,`test10`.`10_55` AS `10_55`,`test10`.`10_56` AS `10_56`,`test10`.`10_57` AS `10_57`,`test10`.`10_58` AS `10_58`,`test10`.`10_59` AS `10_59`,`test10`.`10_60` AS `10_60`,`test10`.`10_61` AS `10_61`,`test10`.`10_62` AS `10_62`,`test10`.`10_63` AS `10_63`,`test18a`.`test18a_id` AS `test18a_id`,`test18a`.`18A_01` AS `18A_01`,`test18a`.`18A_02` AS `18A_02`,`test18a`.`18A_03` AS `18A_03`,`test18a`.`18A_04` AS `18A_04`,`test18a`.`18A_05` AS `18A_05`,`test18a`.`18A_06` AS `18A_06`,`test18a`.`18A_07` AS `18A_07`,`test18a`.`18A_08` AS `18A_08`,`test18a`.`18A_09` AS `18A_09`,`test18a`.`18A_10` AS `18A_10`,`test18a`.`18A_11` AS `18A_11`,`test18a`.`18A_12` AS `18A_12`,`test18a`.`18A_13` AS `18A_13`,`test18a`.`18A_14` AS `18A_14`,`test18a`.`18A_15` AS `18A_15`,`test18a`.`18A_16` AS `18A_16`,`test18a`.`18A_17` AS `18A_17`,`test18a`.`18A_18` AS `18A_18`,`test18a`.`18A_19` AS `18A_19`,`test18a`.`18A_20` AS `18A_20`,`test18a`.`18A_21` AS `18A_21`,`test18a`.`18A_22` AS `18A_22`,`test18a`.`18A_23` AS `18A_23`,`test18a`.`18A_24` AS `18A_24`,`test18a`.`18A_25` AS `18A_25`,`test18a`.`18A_26` AS `18A_26`,`test18a`.`18A_27` AS `18A_27`,`test18a`.`18A_28` AS `18A_28`,`test18a`.`18A_29` AS `18A_29`,`test18a`.`18A_30` AS `18A_30`,`test18a`.`18A_31` AS `18A_31`,`test18a`.`18A_32` AS `18A_32`,`test18a`.`18A_33` AS `18A_33`,`test18a`.`18A_34` AS `18A_34`,`test18b`.`test18b_id` AS `test18b_id`,`test18b`.`18B_01` AS `18B_01`,`test18b`.`18B_02` AS `18B_02`,`test18b`.`18B_03` AS `18B_03`,`test18b`.`18B_04` AS `18B_04`,`test18b`.`18B_05` AS `18B_05`,`test18b`.`18B_06` AS `18B_06`,`test18b`.`18B_07` AS `18B_07`,`test18b`.`18B_08` AS `18B_08`,`test18b`.`18B_09` AS `18B_09`,`test18b`.`18B_10` AS `18B_10`,`test18b`.`18B_11` AS `18B_11`,`test18b`.`18B_12` AS `18B_12`,`test18b`.`18B_13` AS `18B_13`,`test18b`.`18B_14` AS `18B_14`,`test18b`.`18B_15` AS `18B_15`,`test18b`.`18B_16` AS `18B_16`,`test18b`.`18B_17` AS `18B_17`,`test18b`.`18B_18` AS `18B_18`,`test18b`.`18B_19` AS `18B_19`,`test18b`.`18B_20` AS `18B_20`,`test18b`.`18B_21` AS `18B_21`,`test18b`.`18B_22` AS `18B_22`,`test18b`.`18B_23` AS `18B_23` from (((((`test5` join `patient_info` on((`patient_info`.`p_id` = `test5`.`test5_id`))) join `test6` on((`patient_info`.`p_id` = `test6`.`test6_id`))) join `test10` on((`patient_info`.`p_id` = `test10`.`test10_id`))) join `test18a` on((`patient_info`.`p_id` = `test18a`.`test18a_id`))) join `test18b` on((`patient_info`.`p_id` = `test18b`.`test18b_id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patient_info`
--
ALTER TABLE `patient_info`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `test5`
--
ALTER TABLE `test5`
  ADD KEY `test5idfk` (`test5_id`);

--
-- Indexes for table `test6`
--
ALTER TABLE `test6`
  ADD KEY `test6_idfk` (`test6_id`);

--
-- Indexes for table `test10`
--
ALTER TABLE `test10`
  ADD KEY `test10_idfk` (`test10_id`);

--
-- Indexes for table `test18a`
--
ALTER TABLE `test18a`
  ADD KEY `test18a_idfk` (`test18a_id`);

--
-- Indexes for table `test18b`
--
ALTER TABLE `test18b`
  ADD KEY `test18b_idfk` (`test18b_id`);

--
-- Indexes for table `wrat`
--
ALTER TABLE `wrat`
  ADD KEY `wrat_idfk` (`wrat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patient_info`
--
ALTER TABLE `patient_info`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `test5`
--
ALTER TABLE `test5`
  ADD CONSTRAINT `test5idfk` FOREIGN KEY (`test5_id`) REFERENCES `patient_info` (`p_id`);

--
-- Constraints for table `test6`
--
ALTER TABLE `test6`
  ADD CONSTRAINT `test6_idfk` FOREIGN KEY (`test6_id`) REFERENCES `patient_info` (`p_id`);

--
-- Constraints for table `test10`
--
ALTER TABLE `test10`
  ADD CONSTRAINT `test10_idfk` FOREIGN KEY (`test10_id`) REFERENCES `patient_info` (`p_id`);

--
-- Constraints for table `test18a`
--
ALTER TABLE `test18a`
  ADD CONSTRAINT `test18a_idfk` FOREIGN KEY (`test18a_id`) REFERENCES `patient_info` (`p_id`);

--
-- Constraints for table `test18b`
--
ALTER TABLE `test18b`
  ADD CONSTRAINT `test18b_idfk` FOREIGN KEY (`test18b_id`) REFERENCES `patient_info` (`p_id`);

--
-- Constraints for table `wrat`
--
ALTER TABLE `wrat`
  ADD CONSTRAINT `wrat_idfk` FOREIGN KEY (`wrat_id`) REFERENCES `patient_info` (`p_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
