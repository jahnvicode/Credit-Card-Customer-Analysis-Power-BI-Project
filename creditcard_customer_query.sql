create database powerBiproject_cc;
use powerBiproject_cc;

-- create credit card details table
CREATE TABLE cc_detail (
    Client_Num INT,
    Card_Category VARCHAR(20),
    Annual_Fees INT,
    Activation_30_Days INT,
    Customer_Acq_Cost INT,
    Week_Start_Date DATE,
    Week_Num VARCHAR(20),
    Qtr VARCHAR(10),
    current_year INT,
    Credit_Limit DECIMAL(10,2),
    Total_Revolving_Bal INT,
    Total_Trans_Amt INT,
    Total_Trans_Ct INT,
    Avg_Utilization_Ratio DECIMAL(10,3),
    Use_Chip VARCHAR(10),
    Exp_Type VARCHAR(50),
    Interest_Earned DECIMAL(10,3),
    Delinquent_Acc VARCHAR(5)
);

-- SET GLOBAL local_infile = 1;

/*Add MySQL to System PATH (One-time setup)
If you want to make mysql available everywhere:

Step-by-step:
Press Win + S → Search for Environment Variables.
Click "Edit the system environment variables".
Click "Environment Variables..."
Under System variables, find Path → Click Edit.
Click New, and add the path:

C:\Program Files\MySQL\MySQL Server 8.0\bin
Click OK → OK → OK.
Close any open Command Prompts and reopen.

Now you can just type "mysql -u root -p --local-infile=1" from anywhere.*/





LOAD DATA LOCAL INFILE 'C:/Users/virat/Desktop/Power Bi/Powerbi Project/credit_card.csv'
INTO TABLE cc_detail
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;







-- 2. Create customer_detail table

CREATE TABLE cust_detail (
    Client_Num INT,
    Customer_Age INT,
    Gender VARCHAR(5),
    Dependent_Count INT,
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(20),
    State_cd VARCHAR(50),
    Zipcode VARCHAR(20),
    Car_Owner VARCHAR(5),
    House_Owner VARCHAR(5),
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT,
    Cust_Satisfaction_Score INT
);

LOAD DATA LOCAL INFILE 'C:/Users/virat/Desktop/Power Bi/Powerbi Project/customer.csv'
INTO TABLE cust_detail
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select  * from cc_detail;
select* from cust_detail;
