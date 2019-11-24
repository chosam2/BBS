-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        5.7.28-log - MySQL Community Server (GPL)
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  10.2.0.5599
-- --------------------------------------------------------

-- bbs 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `bbs` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bbs`;

-- 테이블 bbs.bbs 구조 내보내기
CREATE TABLE IF NOT EXISTS `bbs` (
  `bbsID` int(11) NOT NULL,
  `bbsTitle` varchar(50) DEFAULT NULL,
  `userID` varchar(20) DEFAULT NULL,
  `bbsDate` datetime DEFAULT NULL,
  `bbsContent` varchar(2048) DEFAULT NULL,
  `bbsAvilable` int(11) DEFAULT NULL,
  PRIMARY KEY (`bbsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 bbs.bbs:~11 rows (대략적) 내보내기
INSERT INTO `bbs` (`bbsID`, `bbsTitle`, `userID`, `bbsDate`, `bbsContent`, `bbsAvilable`) VALUES
	(1, '안녕하세요.', '777', '2019-11-23 12:23:51', '안녕하세요.', 1),
	(2, '안녕하세요', '777', '2019-11-23 14:21:45', '안녕하세요', 1),
	(3, '안녕하세요', '777', '2019-11-23 14:21:47', '안녕하세요', 0),
	(4, '안녕하세요', '777', '2019-11-23 14:21:50', '안녕하세요', 1),
	(5, '안녕하세요', '777', '2019-11-23 14:21:53', '안녕하세요', 1),
	(6, '안녕하세요', '777', '2019-11-23 14:21:56', '안녕하세요', 1),
	(7, '안녕하세요', '777', '2019-11-23 14:21:58', '안녕하세요', 1),
	(8, '안녕하세요', '777', '2019-11-23 14:22:01', '안녕하세요', 1),
	(9, '안녕하세요', '777', '2019-11-23 14:22:03', '안녕하세요', 1),
	(10, '안녕하세요', '777', '2019-11-23 14:22:06', '안녕하세요', 1),
	(11, '안녕하세요', '777', '2019-11-23 14:22:08', '안녕하세요2', 1),
	(12, '반갑습니다.', '777', '2019-11-23 14:49:41', '#오늘도 고생하셨습니다.\r\n\r\n미안해 하지 마세요.\r\n<괜찮아요.>', 1);

-- 테이블 bbs.user 구조 내보내기
CREATE TABLE IF NOT EXISTS `user` (
  `userID` varchar(20) NOT NULL,
  `userPassword` varchar(20) DEFAULT NULL,
  `userName` varchar(20) DEFAULT NULL,
  `userGender` varchar(20) DEFAULT NULL,
  `userEmail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 bbs.user:~2 rows (대략적) 내보내기
INSERT INTO `user` (`userID`, `userPassword`, `userName`, `userGender`, `userEmail`) VALUES
	('777', '777', '777', '남자', '777@naver.com'),
	('gildong', '123456', '홍길동', '남자', 'gildong@naver.com');
