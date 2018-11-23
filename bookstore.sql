#图书类别表
CREATE TABLE booktype(
	bookTypeId INT NOT NULL PRIMARY KEY AUTO_INCREMENT, #图书类别
	bookTypeName VARCHAR(20) NOT NULL, #图书类别名
	context VARCHAR(40)#图书类别内容简介
);


#图书基本信息表
CREATE TABLE bookinfo(
	bookId INT NOT NULL PRIMARY KEY AUTO_INCREMENT, #图书id
	bookName VARCHAR(20) NOT NULL, # 图书名
	booktypeId INT NOT NULL, # 图书类别
	author VARCHAR(20) NOT NULL, #作者
	pbName VARCHAR(20) NOT NULL, # 出版社
	context VARCHAR(200) NOT NULL,	#内容 
	smallImg VARCHAR(50) NOT NULL,#展示的小图片例如picture.jpg 图片需要放在本地文件夹或者 网上的一些图片，超链接
	price NUMERIC NOT NULL, #价格
	pbdate DATE NOT NULL, #出版日期
	booknum INT NOT NULL #图书数量
);


#用户详细信息表
CREATE TABLE customerinfo(
	custId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	custName VARCHAR(100) NOT NULL unique,
	pwd VARCHAR(20) NOT NULL,
	email VARCHAR(20) NOT NULL,	
	tel VARCHAR(13) NOT NULL,
	sex VARCHAR(2) NOT NULL,
	age INT NOT NULL,
	balance NUMERIC #余额
);

#书评表
CREATE TABLE bookdiscuss (
	disId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	booktypeId INT NOT NULL, #图书类别id
	custId INT NOT NULL, #用户
	context VARCHAR(100) NOT NULL #内容
);


#购物车表
CREATE TABLE cart(
	cartId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	bookId INT NOT NULL,
	custId INT NOT NULL,
	scdate DATE NOT NULL, #添加时间
	booknum INT NOT NULL#图书数量
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
	orderNum int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	customerId INT NOT NULL,
	bookId INT NOT NULL,
	num INT NOT NULL,#订购数量
	xsstatus VARCHAR(1) #订单状态 （0-未处理，1-已处理，2-以发货，3-已收货）
);

CREATE TABLE news(
	newsid int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	news VARCHAR(100) NOT NULL
)
