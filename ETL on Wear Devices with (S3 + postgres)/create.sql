DROP TABLE IF EXISTS product_name;
CREATE TABLE product_name
(
	Name_ID SERIAL NOT NULL ,
	Name varchar(255),
	Primary Key (Name_ID)
);

DROP TABLE IF EXISTS Body_parts;
CREATE TABLE Body_parts
(
	Body_part_ID SERIAL NOT NULL,
	Body_Part varchar(255),
	PRIMARY KEY (Body_part_ID)
);

DROP TABLE IF EXISTS Company_names;
CREATE TABLE Company_names
(
	Company_Name_ID SERIAL NOT NULL,
	Company_name varchar(255),
	Company_City varchar(255),
	Company_State varchar(255)
);

DROP TABLE IF EXISTS Category;
CREATE TABLE Category
(
	Category_ID SERIAL NOT NULL,
	Category_Name varchar(255)
);


