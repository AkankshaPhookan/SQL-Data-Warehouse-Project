/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
     This script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold' */ 


	-- Create database 'DataWarehouse'
use master;
go

--Creating datawarehouse database
Create database dataWarehouse;
use dataWarehouse;

--Creating schemas
Create Schema Bronze
go
Create Schema Silver
go
Create Schema Gold
