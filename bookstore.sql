#图书类别表
CREATE TABLE booktype(
	bookTypeId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	parentId INT NOT NULL,
	bookTypeName VARCHAR(20) NOT NULL,
	context VARCHAR(40),
	isDelete INT NOT NULL
);


#图书基本信息表
CREATE TABLE bookinfo(
	bookId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	bookName VARCHAR(20) NOT NULL,
	booktypeId INT NOT NULL,
	author VARCHAR(20) NOT NULL,
	pbName VARCHAR(20) NOT NULL,
	context VARCHAR(200) NOT NULL,	
	smallImg VARCHAR(20) NOT NULL,
	bigImg VARCHAR(20) NOT NULL,
	price NUMERIC NOT NULL,
	pbdate DATE NOT NULL,
	hyprice NUMERIC NOT NULL,
	bookStates INT NOT NULL, 
	sjdate DATE,
	num INT NOT NULL,
	saleCount INT NOT NULL
);

#用户基本信息表
CREATE TABLE customerinfo(
	custId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	custName VARCHAR(100) NOT NULL,
	pwd VARCHAR(20) NOT NULL,
	email VARCHAR(20) NOT NULL
)

#用户详细信息表
CREATE TABLE customerdetailinfo(
	custId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	tel VARCHAR(13) NOT NULL,
	address VARCHAR(20),
	sex INT NOT NULL,
	age INT,
	countMoney NUMERIC,#累计消费金额
	qq VARCHAR(20)
);

#书评表
CREATE TABLE bookdiscuss (
	disId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	bookId INT NOT NULL,
	custId INT NOT NULL,
	context VARCHAR(100) NOT NULL,
	states INT NOT NULL
);


#购物车表
CREATE TABLE cart(
	favoriteId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	bookId INT NOT NULL,
	custId INT NOT NULL,
	scdate DATE NOT NULL,
	booknum INT NOT NULL,
	context VARCHAR(100)
);



#管理员表
CREATE TABLE sysadmin(
	adminId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	adminName VARCHAR(20),
	pwd VARCHAR(20),
	adminType INT NOT NULL
);

#订单主表
CREATE TABLE ordermain(
	orderNum VARCHAR(20) NOT NULL PRIMARY KEY,
	customerId INT NOT NULL,
	customerName VARCHAR(20),
	tel VARCHAR(20) NOT NULL,
	address VARCHAR(100) NOT NULL,
	xsstatus VARCHAR(1), #销售状态 （0-未处理，1-已处理，2-以发货，3-已收货）
	adminId INT,
	context VARCHAR(100),
	sumprice NUMERIC NOT NULL
);

#订单明细表
CREATE TABLE orderdetail (
	detail INT NOT NULL PRIMARY KEY,#明细编号
	orderNum VARCHAR(20) NOT NULL,#主表id
	bookId INT NOT NULL,
	num INT NOT NULL #订购数量
);

