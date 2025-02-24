-- Create the database for Neubility Platform Core
CREATE DATABASE platform_core;

-- Connect to the platform_core database
\c platform_core;

-- Enable PostGIS and pgRouting extensions
CREATE EXTENSION IF NOT EXISTS postgis;
CREATE EXTENSION IF NOT EXISTS pgrouting; 