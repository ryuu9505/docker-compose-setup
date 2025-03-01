# Docker Compose Setup

A collection of Docker Compose configurations for setting up various services easily.

## 📌 Overview

This repository provides ready-to-use **Docker Compose** configurations for setting up commonly used services like **PostgreSQL, Redis, RabbitMQ, and InfluxDB**. Use this setup to quickly launch a containerized development environment.

## 📂 Included Files

- `docker-compose-influxdb.yml` - InfluxDB setup  
- `docker-compose-postgres.yml` - PostgreSQL 
- `docker-compose-rabbitmq.yml` - RabbitMQ message broker  
- `docker-compose-redis.yml` - Redis in-memory database  
- `start.sh` - Script to start all services  
- `stop.sh` - Script to stop and clean up services  

## 🛠 Installation & Usage

### Clone the Repository
```sh
git clone https://github.com/ryuu9505/docker-compose-setup.git
cd docker-compose-setup
```

### Start All Services
```sh
./start.sh
```
This will bring up all defined services in **detached mode (`-d`)**.

### Stop and Clean Up
```sh
./stop.sh
```
This will **stop all running containers and remove unused ones**.

## 🎯 Customization

- Modify any `docker-compose-*.yml` file to customize the services.  
- You can add **new services** by creating additional `docker-compose-<service>.yml` files and adding it to the .env file.
- Now the current `docker-compose-postgres.yml` file uses `Dockerfile.postgres` and PostgreSQL container is configured to execute `init-db.sql` after startup, creating the platform_core database and setting up the postgis and pg_routing extensions.