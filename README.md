# 🌐 WordPress & Python Dual Learning Project

A comprehensive dual-stack project comparing traditional WordPress development with modern Python web applications. This repository provides hands-on experience with both technologies in containerized environments.

## 📋 Project Overview

This project implements the same web application using two different approaches:
- **WordPress Version**: Traditional PHP-based CMS with Nginx, MySQL, and SSL
- **Python Version**: Modern Python web application (coming soon)

## 🏗️ Current Implementation Status

### ✅ Version 1.0 - WordPress Basic Setup (Completed)
- **Nginx** reverse proxy with SSL/TLS termination
- **WordPress** with PHP 8.1-FPM 
- **MySQL 8.0** with performance optimizations
- **Docker Compose** orchestration
- **Custom domain** support (projectalpha.local)

### 🔄 Coming Next
- Redis caching layer
- Python alternative implementation
- Performance comparison tools
- Advanced configurations


### 4. Access the Application
- **HTTPS**: https://projectalpha.local (or https://localhost)
- **HTTP**: http://projectalpha.local (redirects to HTTPS)
- **MySQL**: localhost:3306

## 📁 Project Structure

```
├── README.md                      # Project documentation
├── .gitignore                     # Git ignore rules
└── version-wordpress/             # WordPress implementation
    ├── docker-compose.yml         # Service orchestration
    ├── .env                       # Environment variables
    ├── .env.example              # Environment template
    ├── ssl/                       # SSL certificates
    │   ├── server.crt
    │   └── server.key
    ├── nginx/                     # Nginx configuration
    │   ├── dockerfile
    │   └── nginx.conf
    ├── wordpress/                 # WordPress customization
    │   └── dockerfile
    └── BDD/                       # Database configuration
        ├── dockerfile
        ├── init.sql
        └── mysql-optimization.cnf
```

## 🔄 Development Approach

This project follows an **incremental development approach**:

### ✅ Phase 1: WordPress Foundation (Current)
- Basic WordPress + Nginx + MySQL stack
- SSL/TLS configuration
- Docker containerization
- Production-ready optimizations

### 🔄 Phase 2: Advanced Features (Next)
- Redis caching integration
- Monitoring and logging
- Performance optimization

### 🔄 Phase 3: Python Alternative (Future)
- Python web application implementation
- Technology comparison tools
- Performance benchmarking

## 🔧 Technical Architecture

### WordPress Stack
- **Web Server**: Nginx 1.29+ with SSL/TLS
- **Application**: WordPress with PHP 8.1-FPM
- **Database**: MySQL 8.0 with optimizations
- **Caching**: File-based (Redis integration planned)
- **SSL**: Self-signed certificates for development

### Key Features
- **FastCGI**: Nginx to PHP-FPM communication
- **SSL Termination**: HTTPS with automatic HTTP redirects
- **Database Optimization**: Custom MySQL 8.0 configurations
- **Container Networking**: Isolated Docker network
- **Persistent Storage**: Docker volumes for data persistence

## 🔍 Services Overview

| Service | Container | Ports | Purpose |
|---------|-----------|-------|---------|
| Nginx | `nginx_proxy` | 80, 443 | Web server & SSL termination |
| WordPress | `wordpress_app` | 9000 | PHP-FPM application server |
| MySQL | `mysql_database` | 3306 | Database server |

## 📊 Performance Optimizations

### MySQL 8.0 Optimizations
```ini
# Memory allocation
innodb_buffer_pool_size = 256M
innodb_log_buffer_size = 16M

# Performance tuning
innodb_flush_log_at_trx_commit = 2
innodb_flush_method = O_DIRECT

# WordPress specific
character-set-server = utf8mb4
collation-server = utf8mb4_unicode_ci
```

### Nginx Optimizations
- FastCGI caching for PHP files
- Static file optimization with expires headers
- Gzip compression enabled
- Security headers implementation

## 🔒 Security Features

- **SSL/TLS encryption** for all communications
- **Security headers** in Nginx configuration
- **Database isolation** within Docker network
- **Non-root containers** for WordPress and Nginx
- **Environment variable** management for sensitive data

## 🛠️ Development Commands

### Container Management
```bash
# Start services
docker compose up -d

# Stop services
docker compose down

# View logs
docker compose logs -f

# Rebuild containers
docker compose up --build -d

# Clean restart
docker compose down -v && docker compose up --build -d
```

### Debugging
```bash
# Check service status
docker compose ps

# Access container shell
docker compose exec wordpress_app sh
docker compose exec mysql_database bash

# Monitor MySQL
docker compose logs mysql_database --tail=50
```


## 🧪 Testing & Validation

### Health Checks
```bash
# Test HTTPS connectivity
curl -k -I https://projectalpha.local

# Verify database connection
docker compose exec mysql_database mysql -u wordpress -p wordpress

# Check PHP-FPM status
docker compose exec wordpress_app php -v
```

## 🔄 Next Steps (Roadmap)

1. **Redis Integration**
   - Add Redis container to stack
   - Configure WordPress Redis plugin
   - Performance comparison with/without cache

2. **Python Implementation**
   - Django or Flask application
   - PostgreSQL database
   - Same functionality as WordPress version

3. **Advanced Features**
   - Monitoring with Prometheus/Grafana
   - CI/CD pipeline setup
   - Production deployment configurations

4. **Performance Analysis**
   - Load testing with Apache Bench
   - Memory and CPU usage comparison
   - Response time analysis

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request


## 🎯 Learning Objectives

By completing this project, you will learn:
- **Container orchestration** with Docker Compose
- **Web server configuration** with Nginx
- **PHP-FPM optimization** techniques
- **MySQL performance tuning**
- **SSL certificate management**
- **WordPress development** best practices
- **Python web development** (upcoming)
- **Performance comparison** methodologies


---
**Version**: 1.0.0 - WordPress Basic Implementation  
**Last Updated**: September 2025  
**Status**: ✅ Stable & Ready for Production
