

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `sent_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `chat` (`id`, `username`, `text`, `sent_at`) VALUES
(1, 'Doctor', 'Hello patient', '2021-01-01 15:47:42'),
(2, 'Patient', 'Hey doc', '2021-01-01 15:47:57');



CREATE TABLE `patient_data` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(2) NOT NULL,
  `fever` tinyint(1) NOT NULL,
  `nausea` tinyint(1) NOT NULL,
  `cough` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `patient_data` (`id`, `name`, `age`, `fever`, `nausea`, `cough`) VALUES
(1, 'Siddharth', 21, 1, 1, 0),
(4, 'Tejas', 22, 1, 1, 0);


ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `patient_data`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


ALTER TABLE `patient_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;
