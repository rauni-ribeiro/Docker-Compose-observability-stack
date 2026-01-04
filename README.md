# Docker Compose Observability Stack 🐳

A hands-on **Docker Compose multi-container stack** designed to consolidate core container, networking and observability concepts using real-world tooling.

This project provisions a small but realistic architecture composed of:
- **Nginx** as an edge reverse proxy
- **Python application** built from a custom Dockerfile
- **Prometheus** for metrics scraping and observability

The goal is to demonstrate how multiple services communicate securely using Docker networks, volumes and configuration best practices.

---

## Architecture Overview 📐🐙

Client  
→ Nginx (public network, reverse proxy)  
→ Python App (private network)  

Prometheus (private network)  
→ Scrapes application metrics  

Key concepts:
- Public vs private Docker networks
- Service-to-service DNS resolution
- Reverse proxy pattern
- Configuration via bind mounts
- Persistent data via named volumes

---

## Project Structure

```text
.
├── backend
│   ├── app-python
│   │   ├── Dockerfile
│   │   └── helloworldapp.sh
│   └── prometheus
│       └── prometheus.yml
├── frontend
│   └── nginx
│       └── nginx.conf
├── docker-compose.yml
└── README.md

```

---

## Services

### Nginx 
- Acts as the entry point (reverse proxy)
- Exposes port **80**
- Routes traffic to the Python application
- Configuration mounted as a read-only bind mount

### Python Application
- Built from a custom Dockerfile
- Runs inside a private Docker network
- Serves a simple HTTP endpoint
- Demonstrates containerized application runtime

### Prometheus
- Scrapes metrics on port **9090**
- Configuration mounted via bind mount (`prometheus.yml`)
- Uses a named volume for persistent data storage

---

## How to Run

Requirements:
- Docker
- Docker Compose

From the project root:

docker compose up -d --build

---

## Access Points

- Application (via Nginx):  
  http://localhost

- Prometheus UI:  
  http://localhost:9090

---

## Key Concepts Demonstrated

- Dockerfile and build context usage
- Docker Compose service orchestration
- Reverse proxy configuration with Nginx
- Public and private Docker networking
- Bind mounts vs named volumes
- Configuration versioning via repository
- Observability fundamentals with Prometheus
- Container troubleshooting using logs

---

## Purpose

This repository was built as a **practical learning project** to consolidate Docker and DevOps fundamentals using a realistic stack rather than isolated examples.

It focuses on understanding *why* each component exists and *how* they interact, not just on running containers.

---

## Author

Rauni Ribeiro  
Cloud / DevOps Engineer  
https://www.rauniribeiro.com  
https://www.linkedin.com/in/rauni-ribeiro
