/* CREATE USER */
-- 
-- CREATE USER 'cauca'@'%' IDENTIFIED BY 'cauca.1234';
-- GRANT ALL PRIVILEGES ON cauca.* TO 'cauca'@'%' WITH GRANT option;
-- FLUSH PRIVILEGES;
--
/* CREATE DATABASE */
-- CREATE DATABASE cauca;

CREATE TABLE courtauction (
	id INT(11) NOT NULL AUTO_INCREMENT,
	court VARCHAR(16) NOT NULL,
	caNo VARCHAR(16) NOT NULL,
	caDesc TEXT,
	itemNo INT NOT NULL,
	itemType VARCHAR(16) NOT NULL,
	addr0 VARCHAR(16) NOT NULL,
	addr1 VARCHAR(16) NOT NULL,
	addr2 VARCHAR(16) NOT NULL,
	addr VARCHAR(100),	
	addrInfo TEXT,
	remarks TEXT,
	value BIGINT NOT NULL,
	valueMin BIGINT NOT NULL,
	auctionInfo VARCHAR(64) NOT NULL,
	auctionTel VARCHAR(64) NOT NULL,
	auctionDate DATE NOT NULL,
	auctionLoc VARCHAR(64) NOT NULL,
	status VARCHAR(8) NOT NULL,
	regDate DATE NOT NULL,
	updDate DATE NOT NULL,
	PRIMARY KEY (id)
);

CREATE UNIQUE INDEX COURTAUCTION_UK_01 ON courtauction (court, caNo, itemNo);