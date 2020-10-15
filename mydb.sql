-- SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
-- SET AUTOCOMMIT = 0;
-- START TRANSACTION;
-- SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- table_1 structure
--

DROP TABLE IF EXISTS `table_1`;
CREATE TABLE IF NOT EXISTS `table_1` (
  `field_1` int(11) NOT NULL AUTO_INCREMENT,
  `field_2` varchar(80) COLLATE utf8_bin NOT NULL,
  `field_3` char(4) COLLATE utf8_bin NOT NULL COMMENT 'my comment',
  PRIMARY KEY (`field_1`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Data dump for table_1
--

INSERT INTO `table_1` (`field_2`, `field_3`) VALUES
('textA', 'text'),
('textB', 'text'),
('textC', 'text');


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
