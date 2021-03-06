CREATE TABLE owner (
ownerID Varchar2(1) NOT NULL,
fname Varchar2(15) NOT NULL,
lname Varchar2(20) NOT NULL,
PRIMARY KEY (ownerID));

CREATE TABLE item (
itemID NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY,
categoryName Varchar2(30) NOT NULL,
ownerID Varchar2(1) NOT NULL,
purchaseDate DATE NOT NULL,
description Varchar2(50) NOT NULL,
price NUMBER(5) NOT NULL,
editionNumber Varchar2(10),
weight NUMBER(5,1),
serialNumber Varchar2(10),
productNumber Varchar2(5) NOT NULL,
brand Varchar2(30), 
PRIMARY KEY (itemID));

CREATE TABLE categories (
categoryName Varchar2(30) NOT NULL, 
PRIMARY KEY(categoryName));

INSERT INTO owner (ownerID, fname, lname)
VALUES ('1', 'Jennifer', 'Smith');

INSERT INTO categories (categoryName)
VALUES ('art');
INSERT INTO categories (categoryName)
VALUES('electronics');
INSERT INTO categories (categoryName)
VALUES ('furniture');
INSERT INTO categories (categoryName)
VALUES ('collectable');
INSERT INTO categories (categoryName)
VALUES ('cookware');
INSERT INTO categories (categoryName)
VALUES ('clothes');
INSERT INTO categories (categoryName)
VALUES ('jewelry');
INSERT INTO categories (categoryName)
VALUES ('entertainment');

INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, weight,
productNumber)
VALUES ('art', '1', TO_DATE('14-05-1990', 'DD-MM-YYYY'), 'panther picture', 584, 70, '345');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, weight,
productNumber)
VALUES ('art', '1', TO_DATE('14-12-2018', 'DD-MM-YYYY'), 'hufflepuff tapestry', 25, 0.5, '064');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, weight,
productNumber)
VALUES ('art', '1', TO_DATE('09-06-2005', 'DD-MM-YYYY'), 'photo album', 12, 0.3, '008');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, weight,
productNumber)
VALUES ('art', '1', TO_DATE('18-11-2000', 'DD-MM-YYYY'), 'panther painting', 97, 1.0, '321');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, weight,
productNumber)
VALUES ('art', '1', TO_DATE('25-02-2018', 'DD-MM-YYYY'), 'moon crystal', 50, 1.0, '086');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, weight,
productNumber)
VALUES ('art', '1', TO_DATE('25-12-2008', 'DD-MM-YYYY'), 'fox print', 25, 0.2, '546');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, weight,
productNumber)
VALUES ('art', '1', TO_DATE('13-02-2019', 'DD-MM-YYYY'), 'LATT portrait', 35, 0.5, '089');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, weight,
productNumber)
VALUES ('art', '1', TO_DATE('03-07-2020', 'DD-MM-YYYY'), 'adora badge', 45, 0.2, '005');

INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, weight,
serialNumber, productNumber, brand)
VALUES ('electronics', '1', TO_DATE('15-09-2015', 'DD-MM-YYYY'), 'laptop1', 995, 17, '5083-23242', '839',
'asus');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, weight,
serialNumber, productNumber, brand)
VALUES ('electronics', '1', TO_DATE('29-08-2012', 'DD-MM-YYYY'), 'laptop2', 1010, 16, '3924-50285',
'842', 'asus');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, weight,
serialNumber, productNumber, brand)
VALUES ('electronics', '1', TO_DATE('03-03-2020', 'DD-MM-YYYY'), 'smartTV', 350, 30, '4392-24928',
'856', 'samsung');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, weight,
serialNumber, productNumber, brand)
VALUES ('electronics', '1', TO_DATE('07-11-2017', 'DD-MM-YYYY'), 'smartphone', 600, 2, '4803-38275',
'925', 'samsung');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, weight,
serialNumber, productNumber, brand)
VALUES ('electronics', '1', TO_DATE('28-12-2015', 'DD-MM-YYYY'), 'xbox360', 250, 3, '8934-45398',
'893', 'microsoft');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, weight,
serialNumber, productNumber, brand)
VALUES ('electronics', '1', TO_DATE('12-11-2019', 'DD-MM-YYYY'), 'nintendo switch', 250, 2, '5373-27535', '832', 'nintendo');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, weight,
serialNumber, productNumber, brand)
VALUES ('electronics', '1', TO_DATE('14-09-2019', 'DD-MM-YYYY'), 'hard drive', 60, 1, '4392-10942',
'200', 'sony');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, weight,
serialNumber, productNumber, brand)
VALUES ('electronics', '1', TO_DATE('22-11-2016', 'DD-MM-YYYY'), 'wiiU', 150, 3, '2880-18313', '102',
'nintendo');

INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, weight,
productNumber, brand)
VALUES ('furniture', '1', TO_DATE('29-06-2018', 'DD-MM-YYYY'), 'couch', 500, 50, '639', 'ashley furniture');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, weight,
productNumber, brand)
VALUES ('furniture', '1', TO_DATE('24-07-2019', 'DD-MM-YYYY'), 'queen bed', 70, 40, '602', 'wolf furniture');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, weight,
productNumber, brand)
VALUES ('furniture', '1', TO_DATE('20-02-2013', 'DD-MM-YYYY'), 'cheerio cabinet', 110, 90, '690',
'overstock');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, weight,
productNumber, brand)
VALUES ('furniture', '1', TO_DATE('30-05-2014', 'DD-MM-YYYY'), 'console table', 150, 120, '650',
'gardners');

INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, 
editionNumber, weight, productNumber, brand)
VALUES ('collectable', '1', TO_DATE('11-04-2018', 'DD-MM-YYYY'), 'disney pin book1', 220, '301/803', 5, 
'501', 'kracken');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, 
editionNumber, weight, productNumber, brand)
VALUES ('collectable', '1', TO_DATE('18-01-2020', 'DD-MM-YYYY'), 'disney pin book2', 275, '23/56', 6,
'502', 'pinfolio');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, 
editionNumber, weight, productNumber, brand)
VALUES ('collectable', '1', TO_DATE('09-06-2015', 'DD-MM-YYYY'), 'trading card book', 145, '456/1000',
2, '520', 'wizards of the coast');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, 
editionNumber, weight, productNumber, brand)
VALUES ('collectable', '1', TO_DATE('04-01-2020', 'DD-MM-YYYY'), 'disney pin board', 350, '00/00', 7,
'513', 'michaels');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, 
editionNumber, weight, productNumber, brand)
VALUES ('collectable', '1', TO_DATE('13-05-2018', 'DD-MM-YYYY'), 'giant marie', 30, '00/00', 1, '510',
'disney');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, 
editionNumber, weight, productNumber, brand)
VALUES ('collectable', '1', TO_DATE('03-10-2019', 'DD-MM-YYYY'), 'fluttershy', 95, '102/200', 3, '515',
'kotobyukia');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, 
editionNumber, weight, productNumber, brand)
VALUES ('collectable', '1', TO_DATE('25-02-2017', 'DD-MM-YYYY'), 'eevee', 60, '00/00', 2, '530', 'build a bear');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, 
editionNumber, weight, productNumber, brand)
VALUES ('collectable', '1', TO_DATE('19-08-2018', 'DD-MM-YYYY'), 'alolan vulpix', 65, '00/00', 2, '531',
'build a bear');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, 
editionNumber, weight, productNumber, brand)
VALUES ('collectable', '1', TO_DATE('30-09-2017', 'DD-MM-YYYY'), 'nendoroid doll girl', 50, '832/1000',
0.5, '540', 'good smile company');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, 
editionNumber, weight, productNumber, brand)
VALUES ('collectable', '1', TO_DATE('30-09-2017', 'DD-MM-YYYY'), 'nendoriod doll boy', 50, '367/1000',
0.5, '541', 'good smile company');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, 
editionNumber, weight, productNumber, brand)
VALUES ('collectable', '1', TO_DATE('14-02-2019', 'DD-MM-YYYY'), 'Lady and the Tramp', 40, '34/150', 1,
'542', 'funko pop');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, 
editionNumber, weight, productNumber, brand)
VALUES ('collectable', '1', TO_DATE('25-12-2018', 'DD-MM-YYYY'), 'raptor', 60, '46/180', 2, '550',
'beast of the mesozodiac');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, 
editionNumber, weight, productNumber, brand)
VALUES ('collectable', '1', TO_DATE('03-11-2015', 'DD-MM-YYYY'), 'autographed football', 20, '20/23',
5, '560', 'NFL');

INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, weight,
productNumber, brand)
VALUES ('cookware', '1', TO_DATE('03-03-2014', 'DD-MM-YYYY'), 'popcorn maker', 25, 5, '289', 'nostaliga');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, weight,
productNumber, brand)
VALUES ('cookware', '1', TO_DATE('25-08-2016', 'DD-MM-YYYY'), 'mini fridge', 50, 70, '260', 'maytag');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, weight,
productNumber, brand)
VALUES ('cookware', '1', TO_DATE('25-12-2018', 'DD-MM-YYYY'), 'pokemon waffle maker', 20, 2, '210', 
'thinkgeek');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, weight,
productNumber, brand)
VALUES ('cookware', '1', TO_DATE('06-01-1995', 'DD-MM-YYYY'), 'deep freezer', 95, 90, '233',
'insignia');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, weight,
productNumber, brand)
VALUES ('cookware', '1', TO_DATE('12-09-2008', 'DD-MM-YYYY'), 'microwave', 45, 20, '213', 'rival');

INSERT INTO item (categoryName, ownerID, purchaseDate, description, price,
productNumber, brand)
VALUES ('clothes', '1', TO_DATE('25-12-2013', 'DD-MM-YYYY'), 'cashmere scarf', 50, '808', 'louis vutton');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price,
productNumber, brand)
VALUES ('clothes', '1', TO_DATE('17-08-2020', 'DD-MM-YYYY'), 'bridesmaid dress', 79, '809', 'torrid');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price,
productNumber, brand)
VALUES ('clothes', '1', TO_DATE('29-06-2019', 'DD-MM-YYYY'), 'tea dress', 59, '810', 'torrid');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price,
productNumber, brand)
VALUES ('clothes', '1', TO_DATE('05-10-2018', 'DD-MM-YYYY'), 'hufflepuff skirt', 40, '811', 'torrid');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price,
productNumber, brand)
VALUES ('clothes', '1', TO_DATE('09-01-2018', 'DD-MM-YYYY'), 'HP cardigan', 21, '812', 'torrid');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price,
productNumber, brand)
VALUES ('clothes', '1', TO_DATE('29-05-2016', 'DD-MM-YYYY'), 'pink wig', 35, '813', 'arda');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price,
productNumber, brand)
VALUES ('clothes', '1', TO_DATE('27-02-2018', 'DD-MM-YYYY'), 'd20 purse', 20, '814', 'thinkgeek');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price,
productNumber, brand)
VALUES ('clothes', '1', TO_DATE('18-07-2020', 'DD-MM-YYYY'), 'tennis shoes', 120, '815', 'new balance');

INSERT INTO item (categoryName, ownerID, purchaseDate, description, price,
productNumber)
VALUES ('jewelry', '1', TO_DATE('10-10-2002', 'DD-MM-YYYY'), 'hs classring', 450, '030');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, productNumber)
VALUES ('jewelry', '1', TO_DATE('25-05-2017', 'DD-MM-YYYY'), 'college classring', 550, '031');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, productNumber)
VALUES ('jewelry', '1', TO_DATE('25-01-2002', 'DD-MM-YYYY'), 'diamond earrings', 200, '033');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, productNumber)
VALUES ('jewelry', '1', TO_DATE('08-09-2016', 'DD-MM-YYYY'), 'amethyst bracelet', 150, '034');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, productNumber)
VALUES ('jewelry', '1', TO_DATE('13-06-2014', 'DD-MM-YYYY'), 'cat necklace', 35, '035');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, productNumber)
VALUES ('jewelry', '1', TO_DATE('12-05-2013', 'DD-MM-YYYY'), 'blue necklace', 16, '036');

INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, productNumber)
VALUES ('entertainment', '1', TO_DATE('12-12-2009', 'DD-MM-YYYY'), 'HP series', 50, '300');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, productNumber)
VALUES ('entertainment', '1', TO_DATE('28-07-2005', 'DD-MM-YYYY'), 'getbackers', 30, '301');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, productNumber)
VALUES ('entertainment', '1', TO_DATE('25-02-2015', 'DD-MM-YYYY'), 'doctor who', 15, '302');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, productNumber)
VALUES ('entertainment', '1', TO_DATE('25-07-2009', 'DD-MM-YYYY'), 'gankusuo', 25, '303');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, productNumber)
VALUES ('entertainment', '1', TO_DATE('13-09-2009', 'DD-MM-YYYY'), 'sims 3', 50, '304');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, productNumber)
VALUES ('entertainment', '1', TO_DATE('10-09-2015', 'DD-MM-YYYY'), 'sims 4', 50, '305');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, productNumber)
VALUES ('entertainment', '1', TO_DATE('28-10-1999', 'DD-MM-YYYY'), 'call of the wild', 15, '306');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, productNumber)
VALUES ('entertainment', '1', TO_DATE('25-06-2010', 'DD-MM-YYYY'), 'lion king', 35, '307');
INSERT INTO item (categoryName, ownerID, purchaseDate, description, price, productNumber)
VALUES ('entertainment', '1', TO_DATE('17-09-2008', 'DD-MM-YYYY'), 'munchkin bites', 20, '308'); 