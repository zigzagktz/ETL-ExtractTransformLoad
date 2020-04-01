
ALTER TABLE product_names ADD PRIMARY KEY(index);
ALTER TABLE category ADD PRIMARY KEY(index);
ALTER TABLE body_parts ADD PRIMARY KEY(index);
ALTER TABLE "Company_info" ADD PRIMARY KEY(index);

DROP TABLE IF EXISTS Facts;

Create table Facts(
	IDs SERIAL PRIMARY KEY,
	Product_ID int REFERENCES product_names(index) ,
	Category_ID int REFERENCES category(index),
	BodyPart_ID int REFERENCES body_parts(index),
	Company_ID int REFERENCES "Company_info"(index),
	Price MONEY
);


UPDATE spark_dataframe 
SET "Price" = 0
WHERE "Price" = 'empty' ;

INSERT INTO Facts (product_ID, Category_ID, BodyPart_ID, Company_ID, Price) 
      SELECT pn.index AS product_ID, 
		ct.index AS category_ID,
		bt.index AS bodypart_ID, 
		ci.index AS Company_ID, 
		CAST( Substring(sdf."Price",1,6) AS Money ) 
		
		FROM product_names pn 
	JOIN spark_dataframe sdf
		ON sdf."Name" = pn."NAME" 
	JOIN category ct
		ON ct."Category" = sdf."Category"
	JOIN body_parts bt
		ON bt."BodyLocation" = sdf."BodyLocation"
	JOIN "Company_info" ci
		ON ci."COMPANYNAME" = sdf."CompanyName"
			AND
			ci."COMPANYCITY" = sdf."CompanyCity"
			AND
			ci."COMPANYSTATE" = sdf."CompanyState"
			;
			

			
			
			
			
			
			
			
			
			
			
			
			

;

--SELECT sdf."Price" FROM spark_dataframe sdf;
