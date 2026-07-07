create database SupplyChain
go

use SupplyChain
go

-- create dimension tables
-- ===============================================================================

create table dim_Customer (
    CustomerKey int identity(1,1) primary key,
    Customer_Id int,
    Customer_Segment varchar(50),
    Customer_City varchar(100),
    Customer_State varchar(100),
    Customer_Country varchar(100)
)

create table dim_Product (
    ProductKey int identity(1,1) primary key,
    Product_Card_Id int, 
    Product_Name varchar(255),
    Category_Name varchar(100),
    Department_Name varchar(100)
)

create table dim_Geography (
    GeographyKey int identity(1,1) primary key,
    Order_Country varchar(100),
    Order_Region varchar(100),
    Order_State varchar(100),
    Order_City varchar(100)
)

-- create fact table
-- ===============================================================================

create table fact_DeliveryPerformance (
    Order_Id int,
    Order_Item_Id int primary key, 
    CustomerKey int,
    ProductKey int,
    GeographyKey int,
    
    Order_Date datetime,
    Shipping_Date datetime,
    
    Days_for_shipping_real int,
    Days_for_shipment_scheduled int,
    Delivery_Status varchar(50),
    Shipping_Mode varchar(50),
    Late_delivery_risk int,
    
    Order_Item_Quantity int,
    Sales decimal(18,2),
    Order_Item_Discount decimal(18,2),
    Order_Profit_Per_Order decimal(18,2),

    constraint fk_fact_Customer foreign key (CustomerKey) references dim_Customer(CustomerKey),
    constraint fk_fact_Product foreign key (ProductKey) references dim_Product(ProductKey),
    constraint fk_fact_Geography foreign key (GeographyKey) references dim_Geography(GeographyKey)
)