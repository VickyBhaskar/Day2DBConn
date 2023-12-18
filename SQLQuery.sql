use OurExcercises
-- Create CompanyInfo table
CREATE TABLE CompanyInfo (
    CId INT PRIMARY KEY,
    CName VARCHAR(255) NOT NULL
);
-- Insert data into CompanyInfo table
INSERT INTO CompanyInfo (CId, CName) VALUES
(1, 'Samsung'),
(2, 'HP'),
(3, 'Apple'),
(4, 'Dell'),
(5, 'Toshiba'),
(6, 'Redmi');
select * from CompanyInfo
-- Create Productinfo table
CREATE TABLE Productinfo (
    PId INT PRIMARY KEY,
    PName VARCHAR(255),
    PPrice DECIMAL(18, 2),
    PMDate DATE,
    CId INT,
    FOREIGN KEY (CId) REFERENCES CompanyInfo(CId)
);

-- Insert data into Productinfo table
insert into Productinfo values (101,'Laptop','55000.90','12/12/2023',1)
insert into Productinfo values (102,'Laptop','35000.90','12/12/2012',2)
insert into Productinfo values (103,'Mobile','15000.90','12/03/2012',2)
insert into Productinfo values (104,'Laptop','135000.90','12/12/2012',3)
insert into Productinfo values (105,'Mobile','65000.90','12/12/2012',3)
insert into Productinfo values (106,'Laptop','35000.90','12/12/2012',5)
insert into Productinfo values (107,'Mobile','35000.90','12/01/2012',5)
insert into Productinfo values (108,'Earpod','1000.90','12/01/2022',3)
insert into Productinfo values (109,'Laptop','85000.90','12/12/2021',6)
insert into Productinfo values (110,'Mobile','55000.70','12/12/2020',1)
select * from Productinfo
-- Create CompanyInfo table
CREATE TABLE CompanyInfo (
    CId INT PRIMARY KEY,
    CName VARCHAR(255) NOT NULL
);
---------show all companies name and their product details-----------
select * from CompanyInfo c join Productinfo p on c.CId=p.CId

--------show all products name and their respective company name--------
select p.PName, c.CName from Productinfo p join CompanyInfo c on p.CId=c.CId

--------show all possible combination of company and products------
select * from Productinfo  cross join CompanyInfo 