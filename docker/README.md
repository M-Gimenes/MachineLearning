# Docker Setup

## Quick Start

```bash
cp env.example .env
docker-compose -f docker/docker-compose.yml up -d
```

Access Jupyter Lab at `http://localhost:8888` (default token: `ml2024`).

## Commands

```bash
# Start
docker-compose -f docker/docker-compose.yml up -d

# Rebuild and start
docker-compose -f docker/docker-compose.yml up -d --build

# Stop
docker-compose -f docker/docker-compose.yml down

# Logs
docker-compose -f docker/docker-compose.yml logs -f

# Shell access
docker exec -it machine-learning-jupyter bash
```

## Configuration

Edit `docker/.env` to customize:
- `JUPYTER_TOKEN`: Access token (default: `ml2024`)
- `JUPYTER_PORT`: Port number (default: `8888`)

## Notes

- Notebooks and data are mounted as volumes (changes persist)
- Jupyter data is stored in a Docker volume
- nbstripout is automatically configured on container startup
