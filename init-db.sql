-- Create the database for Neubility Platform Core
CREATE DATABASE platform_core;
CREATE DATABASE platform_core_tenant;

-- Connect to the platform_core database and enable extensions
\c platform_core;
CREATE EXTENSION IF NOT EXISTS postgis;
CREATE EXTENSION IF NOT EXISTS pgrouting;
