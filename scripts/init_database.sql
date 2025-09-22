/*

Create Database and Schemas
============================================================

Script Purpose:
This script creates a new database named 'DataWarehouse' after checking if it already exists.  
If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas  
within the database: 'bronze', 'silver', and 'gold'.  

WARNING:
Running this script will drop the entire 'DataWarehouse' database if it exists.  
All data in the database will be permanently deleted. Proceed with caution  
and ensure you have proper backups before running this script.  

*/

-- You cannot drop a database while connected to it, so in pgAdmin, run this script from the postgres database, not inside DataWarehouse.

-- Drop the 'DataWarehouse' database if it exists
DROP DATABASE IF EXISTS "DataWarehouse";

-- Create the 'DataWarehouse' database
CREATE DATABASE "DataWarehouse";

-- IMPORTANT: At this point, switch connection to "DataWarehouse"
-- In pgAdmin: right-click "DataWarehouse" -> Query Tool

-- Create Schemas inside the new database
CREATE SCHEMA bronze;
CREATE SCHEMA silver;
CREATE SCHEMA gold;
