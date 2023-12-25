CREATE DATABASE IF NOT EXISTS BBSS;
use BBSS;

create table USER(
userID varchar(20),
userPassword varchar(20),
userName varchar(20),
userGender varchar(20),
userEmail varchar(60),
primary key (userID)
);

INSERT INTO USER value('gildong', '123456', '홍길동', '남자', 'gildong@naver.com');
INSERT INTO USER value('gilsoon', '654321', '홍길순', '여자', 'gilsoon@naver.com');

create table BBS (
bbsID INT,
bbsTitle VARCHAR(50),
userID VARCHAR(20),
bbsDate datetime,
bbsContent VARCHAR(2048),
bbsAvailable INT,
primary key (bbsID)
);