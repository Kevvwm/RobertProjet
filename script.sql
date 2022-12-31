-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Listage de la structure de table kwang. comptes
CREATE TABLE IF NOT EXISTS `comptes` (
  `id_compte` int unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(40) NOT NULL,
  `prenom` varchar(40) NOT NULL,
  `email` varchar(100) NOT NULL,
  `identifiant` varchar(40) NOT NULL,
  `motDePasse` varchar(255) NOT NULL,
  `CmotDePasse` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `dateChangement` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `NUMEN` int DEFAULT NULL,
  PRIMARY KEY (`id_compte`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table kwang.comptes : ~14 rows (environ)
INSERT INTO `comptes` (`id_compte`, `nom`, `prenom`, `email`, `identifiant`, `motDePasse`, `CmotDePasse`, `dateChangement`, `NUMEN`) VALUES
	(1, 'wang', 'kevin', 'kevinwg2709@gmail.com', 'kwang', '$2y$10$3Gu9Xv26KLUO8jIu8apa1e.jPlhkHHJR4dJXW0DRIjdvnmnXbBUky', '$2y$10$3Gu9Xv26KLUO8jIu8apa1e.jPlhkHHJR4dJXW0DRIjdvnmnXbBUky', '2022-12-01 16:33:22', NULL),
	(2, 'Xu', 'Clara', 'Xuclara@gmail.com', 'Cxu', '$2y$10$MU1URorl6XkcaDOyUXCSK.U1c1XA5Nkp8ku8ke1yFkd6l8iAcsBi.', '$2y$10$MU1URorl6XkcaDOyUXCSK.U1c1XA5Nkp8ku8ke1yFkd6l8iAcsBi.', '2022-12-03 14:10:07', NULL),
	(3, 'pan', 'Meiyan', 'Panmeiyan@gmail.com', 'Maiyanp', '$2y$10$.w68nTuOaJLVILRhA0I.CeYIjLz9DimHVSi6RdN1ffdZSOXCkZ1G6', '$2y$10$.w68nTuOaJLVILRhA0I.CeYIjLz9DimHVSi6RdN1ffdZSOXCkZ1G6', '2022-12-04 12:56:14', NULL),
	(4, 'aze', 'aze', 'aze@gmail.com', 'azee', '$2y$10$7WISKy8laGitaDdzF4Mg7unJjGysbJJLGC0czt/71Z1VBzbcdYqre', '$2y$10$7WISKy8laGitaDdzF4Mg7unJjGysbJJLGC0czt/71Z1VBzbcdYqre', '2022-12-05 22:27:51', NULL),
	(5, 'Cai', 'Andy', 'caiandy@gmail.com', 'Acai', '$2y$10$/dHW0DUvS2vkPQ4yE4swjOAAtWimBI1LBk0uoEHgGe7p3MIUhT6Pe', '$2y$10$/dHW0DUvS2vkPQ4yE4swjOAAtWimBI1LBk0uoEHgGe7p3MIUhT6Pe', '2022-12-05 22:30:38', NULL),
	(13, 'azer', 'azer', 'azer@gmail.com', 'azer', '$2y$10$vGGNwtcO2kyBbq3OHd.C0uExi0xe9WjufCHeLG2JT.0TPFTShi0Cm', '$2y$10$vGGNwtcO2kyBbq3OHd.C0uExi0xe9WjufCHeLG2JT.0TPFTShi0Cm', '2022-12-06 22:06:31', NULL),
	(14, 'azer', 'azerrra', 'uyuy@gmail.com', 'uyuy', '$2y$10$lyKtvxbQN6C38ZUrhjReyeQXQqUpIKZm1J7lyvIt5uvswU.OcHRmO', '$2y$10$lyKtvxbQN6C38ZUrhjReyeQXQqUpIKZm1J7lyvIt5uvswU.OcHRmO', '2022-12-06 22:14:32', NULL),
	(15, 'Wawa', 'Kiki', 'keke@gmail.com', 'kiwang', '$2y$10$0DtM20KF.NNPG6HqZL2v1eKr3OMch9xMBchUiYcC1AKb8RMGYErwW', '$2y$10$0DtM20KF.NNPG6HqZL2v1eKr3OMch9xMBchUiYcC1AKb8RMGYErwW', '2022-12-12 20:19:17', NULL),
	(16, 'azeazezae', 'azeazeaze', 'arz@gmail.com', 'arz', '$2y$10$A7fucww4c7PgNphbG4Fn9uzKfS6q8YZlA2G5yCve3PWSJCIqSSC2i', '$2y$10$A7fucww4c7PgNphbG4Fn9uzKfS6q8YZlA2G5yCve3PWSJCIqSSC2i', '2022-12-27 17:51:54', NULL),
	(17, 'abd', 'abd', 'abd@gmail.com', 'abd', '$2y$10$Vr9.WIzQ7yqFjZaF1DG2Le4l9qH6e315XWKNYg2wiUcU0o2maIV1y', '$2y$10$Vr9.WIzQ7yqFjZaF1DG2Le4l9qH6e315XWKNYg2wiUcU0o2maIV1y', '2022-12-27 18:35:22', NULL),
	(18, 'rigane', 'riri', 'riagn@gmail.com', 'riri', '$2y$10$eVY/cAXTKK1.JqkiLslZAepnV00L/lyyo/3vNWrB6nQsCzO5z3F8K', '$2y$10$eVY/cAXTKK1.JqkiLslZAepnV00L/lyyo/3vNWrB6nQsCzO5z3F8K', '2022-12-27 19:35:04', NULL),
	(19, 'popop', 'poop', 'popo@gmail.com', 'popo', '$2y$10$GK9.taRXOpIxmeCkiE71iuPNVHxzh46vuXazKaxWw3azhT7opGbhm', '$2y$10$GK9.taRXOpIxmeCkiE71iuPNVHxzh46vuXazKaxWw3azhT7opGbhm', '2022-12-27 19:42:52', NULL),
	(20, 'azeaze', 'azea', 'azert@gmail.com', 'azert', '$2y$10$0IeENtkSDW3uQ.2rsbtwLOp556NpwupVU05lOOJ0k3manNCiAluqq', '$2y$10$0IeENtkSDW3uQ.2rsbtwLOp556NpwupVU05lOOJ0k3manNCiAluqq', '2022-12-29 14:41:01', NULL),
	(21, 'aozpuierorjaozjr', 'Rigane', 'Rigg@gmail.com', 'Rigg', '$2y$10$v5qMTX.PY8fbbxRCZetyp.43T2jf9X0aWoCWi0YNkQPn5aPTze8Oq', '$2y$10$v5qMTX.PY8fbbxRCZetyp.43T2jf9X0aWoCWi0YNkQPn5aPTze8Oq', '2022-12-31 16:55:52', NULL);

-- Listage de la structure de table kwang. note
CREATE TABLE IF NOT EXISTS `note` (
  `NomPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `note` int DEFAULT NULL,
  `coef` int DEFAULT NULL,
  `Dates` date DEFAULT NULL,
  `bts` varchar(50) DEFAULT NULL,
  `epreuves` varchar(50) DEFAULT NULL,
  `Appreciation` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table kwang.note : ~0 rows (environ)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
