/*
===============================================================================
Stored Procedure: Load Bronze Layer (Source -> Bronze)
===============================================================================
Script Purpose:
    This stored procedure loads data into the 'bronze' schema from external CSV files. 
    It performs the following actions:
    - Truncates the bronze tables before loading data.
    - Uses the `BULK INSERT` command to load data from csv Files to bronze tables.

Parameters:
    None. 
	  This stored procedure does not accept any parameters or return any values.

Usage Example:
    EXEC bronze.load_bronze;
===============================================================================
*/

create or alter procedure bronze.load_bronze as
begin

print '==========================================================';
print 'Loading Bronze Layer';
print '==========================================================';

print '-----------------------------------------------------------';
Print 'Loading CRM tables';
print '-----------------------------------------------------------';
	truncate table bronze.crm_cust_info
	Bulk insert bronze.crm_cust_info
	from'C:\Users\AKANKSHA\OneDrive\Desktop\SQL\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
	with (
	Firstrow = 2,
	Fieldterminator = ',',
	tablock
	);

	truncate table bronze.crm_prd_info
	Bulk insert bronze.crm_prd_info
	from"C:\Users\AKANKSHA\OneDrive\Desktop\SQL\sql-data-warehouse-project\datasets\source_crm\prd_info.csv"
	with (
	Firstrow = 2,
	Fieldterminator = ',',
	tablock
	);

	truncate table bronze.crm_sales_details
	Bulk insert bronze.crm_sales_details
	from"C:\Users\AKANKSHA\OneDrive\Desktop\SQL\sql-data-warehouse-project\datasets\source_crm\sales_details.csv"
	with (
	Firstrow = 2,
	Fieldterminator = ',',
	tablock
	);

print '-----------------------------------------------------------';
print 'Loading ERP Tables';
print '-----------------------------------------------------------';
truncate table bronze.erp_cust_az12
	Bulk insert  bronze.erp_cust_az12
	from"C:\Users\AKANKSHA\OneDrive\Desktop\SQL\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv"
	with (
	Firstrow = 2,
	Fieldterminator = ',',
	tablock
	);

	truncate table bronze.loc_a101
	Bulk insert  bronze.loc_a101
	from"C:\Users\AKANKSHA\OneDrive\Desktop\SQL\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv"
	with (
	Firstrow = 2,
	Fieldterminator = ',',
	tablock
	);

	truncate table bronze.px_cat_g1v2
	Bulk insert  bronze.px_cat_g1v2
	from"C:\Users\AKANKSHA\OneDrive\Desktop\SQL\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv"
	with (
	Firstrow = 2,
	Fieldterminator = ',',
	tablock
);
end
