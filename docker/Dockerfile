# Use Python 3.11 as base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    graphviz \
    libgraphviz-dev \
    git \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements file
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire project
COPY . .

# Expose Jupyter port
EXPOSE 8888

# Make startup scripts executable
RUN chmod +x /app/docker/scripts/start-jupyter.sh && \
    chmod +x /app/docker/scripts/setup-nbstripout.sh

# Set environment variables for Jupyter
ENV JUPYTER_ENABLE_LAB=yes
# JUPYTER_TOKEN is set via docker-compose.yml, not here to allow override

# Run Jupyter Lab
CMD ["/app/docker/scripts/start-jupyter.sh"]

