# Docker-with-Poetry

## Cookbook

### Getting Started
```
cd [project folder]
poetry install
uvicorn startup:app
```
<hr>

### Docker Commands
```
docker build -t fastapi-image .
docker run --name fastapi-app -d -p 8080:80 fastapi-image
```
<hr>

### Docker-Compose Commands
```
docker-compose up --build
```
<hr>