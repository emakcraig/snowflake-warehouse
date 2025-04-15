/*
===================================================================================================
DDL Script: Create Silver Tables 
===================================================================================================
Script Purpose:
  This script creates tables in the 'silver' schema, dropping existing tables if they already exist. 
  Running this script re-defines the DDL structure of 'bronze tables
===================================================================================================
*/

CREATE SCHEMA SILVER;
USE SCHEMA SILVER;

DROP TABLE IF EXISTS silver.crm_cust_info;
CREATE TABLE silver.crm_cust_info(
cst_id INT,
cst_key NVARCHAR(50),
cst_firstname NVARCHAR(50),
cst_lastname NVARCHAR(50),
cst_marital_status NVARCHAR(50),
cst_grd NVARCHAR(50),
cst_create_date DATE,
dwh_create_date TIMESTAMP_LTZ DEFAULT CURRENT_TIMESTAMP());



DROP TABLE IF EXISTS silver.crm_prd_info;

CREATE TABLE silver.crm_prd_info(
prd_id INT,
prd_cat NVARCHAR(50),
prd_key NVARCHAR(50),
prd_nm NVARCHAR(50),
prd_cost INT,
prd_line NVARCHAR(50),
prd_start_dt DATE,
prd_end_dt DATE,
dwh_create_date TIMESTAMP_LTZ DEFAULT CURRENT_TIMESTAMP());

DROP TABLE IF EXISTS silver.crm_sales_details;
CREATE TABLE silver.crm_sales_details( 
sls_ord_num NVARCHAR(50),
sls_prd_key NVARCHAR(50),
sls_cust_id INT,
sls_order_dt DATE,
sls_ship_dt DATE,
sls_due_dt DATE,
sls_sales INT,
sls_quantity INT,
sls_price INT,
dwh_create_date TIMESTAMP_LTZ DEFAULT CURRENT_TIMESTAMP());

DROP TABLE IF EXISTS silver.erp_loc_a101;
CREATE TABLE silver.erp_loc_a101(
cid NVARCHAR(50),
cntry NVARCHAR(50),
dwh_create_date TIMESTAMP_LTZ DEFAULT CURRENT_TIMESTAMP());


DROP TABLE IF EXISTS  silver.erp_cust_az12;
CREATE TABLE silver.erp_cust_az12(
cid NVARCHAR(50),
bdate DATE,
gen NVARCHAR(50),
dwh_create_date TIMESTAMP_LTZ DEFAULT CURRENT_TIMESTAMP());

DROP TABLE IF EXISTS  silver.erp_px_cat_g1v2;
CREATE TABLE silver.erp_px_cat_g1v2(
id NVARCHAR(50),
cat NVARCHAR(50),
cubcat NVARCHAR(50),
maintainance NVARCHAR(50),
dwh_create_date TIMESTAMP_LTZ DEFAULT CURRENT_TIMESTAMP());
