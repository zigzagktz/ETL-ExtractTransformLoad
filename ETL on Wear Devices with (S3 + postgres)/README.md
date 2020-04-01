# ETL ExtractTransformLoad

![Slide 1](https://user-images.githubusercontent.com/32847030/78184573-b4966580-7437-11ea-9c0e-4d4de928ffa4.jpeg)
This projects represents a simple data warehousing process that can be helpful in developing the though process behind any big data-management project that involves the usage of cutting-edge technologies. 

-------


![Slide 6](https://user-images.githubusercontent.com/32847030/78184598-bc560a00-7437-11ea-9ed9-03adad56fc34.jpeg)


---------

![Slide 2](https://user-images.githubusercontent.com/32847030/78184579-b6f8bf80-7437-11ea-9c87-4ba070a7ebb9.jpeg)

**- Understanding Objective:** We will see the basic objective of this ETL process and the motivation behind it. 

**- Understanding Data:** We will understand the dataset and its attributes.  

**- Understanding Workflow:** We will see the overall workflow understand the process from start to end.   

**- Understand Star Schema:** At last we will see the end result and explain the benefit.  


----------


![Slide 3](https://user-images.githubusercontent.com/32847030/78184586-b829ec80-7437-11ea-901a-3c10f63758d3.jpeg)


-----------

![Slide 5](https://user-images.githubusercontent.com/32847030/78184594-bb24dd00-7437-11ea-8d8b-e451be9d6074.jpeg)
The dataset contains basic information about the hundreds of wearable devices and it was collected from [https://data.world/].
The dataset perticularly useful in understanding the prices based on devices different attributes.

**- Names of Wearable devices:** Each device has a unique name and an exampple of the name is given above.  

**- Body Location:** This signifies which body part does the devices built for. Examples are given in picture.  

**- Category:** This attributes divides the entity into different categories and we can see the examples above.  

**- Company Name, City, State:** They are three different attributes binded together; they represent the information about the company.  

**- Price:** That is the most important variable in our dataset and is a focul point of our project.  


-----------


![Slide 4](https://user-images.githubusercontent.com/32847030/78184588-b8c28300-7437-11ea-9630-83f7128c4a48.jpeg)

**1. Host a Postgres Database on AWS:** Cloud technologies will care about the scalability and maintainance of the database.

**2. Creating S3 bucket:** Aws provides a distributed storage file systems which is helpful in dumping and staging our data.  

**3. Load data into DataBricks:** We directly read data from the URL in the databricks environment which provides fast comptation using distributed spark architecture working under the hood.  

**4. Convert into Spark Dataframe:** Although our dataset is very small, but for demonstration purposes, converting our data into spark dataframe would allow us fast computation if the data scales to hundreds of GigaBytes.    

**5. Transformation:** Using SparkSQL, a method to use SQL on spark's distributed computation, I have performed data cleaning and filtering.  

**6. Creating Dimensions:** Again, I have used SparkSQL to create indipended data table that each represents one dimension of our warehouse.    

**7. Storing data to Postgres:** Because SparkSQL is not a relational database, we have to create relationships between tables after storing them into a relational database.      

**8. Creating Fact table:** I have created the fact table using SQL queries in postgres database and the queries are shared above in the repo.   

**9. Fetch Data back:** Once our fact table was built in postgres database, we fetch back all our entities into databricks using python.  
**10. Dump into S3:** At last, we dump all our data into S3 bucket in JSON format. This step is really helpful in develping real-time applications where updating data in S3 bucket can trigger responses into our application.  


----------


![Slide 7](https://user-images.githubusercontent.com/32847030/78184604-bd873700-7437-11ea-8162-7d15fe808c7e.jpeg)

**- Fact Table:** This table holds a mesurable and quantifiable entity that defines our business decision-making stratigy. 
**- Dimension:** These are entities that help us look at our end result with many different angles.     

**For example:** *Let's say, we have a device belongs to medical category, developed for the chest, and belongs to the company XYZ, then we can see the prices for that can be $200.   
Or, a device from medical category, built for arms, built by company named ABC which have a price of $300.* 
