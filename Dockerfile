# Use an official Python runtime as the base image
# ===== Stage 1: Builder =====

FROM python:3.9-slim AS backend-Builder

# Set the working directory in the container
WORKDIR /app

# Install required packages for system
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends \
    gcc \
    mariadb-client \
    libmariadb-dev \
    pkg-config \
    && rm -rf /var/lib/apt/lists/*

# Copy the requirements file into the container
COPY requirements.txt .

# Install app dependencies
RUN pip install mysqlclient
RUN pip install --no-cache-dir -r requirements.txt

# ===== Stage 2: Production =====
FROM python:3.9-slim 

# Set the working directory in the container
WORKDIR /app

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    libmariadb-dev \
    && rm -rf /var/lib/apt/lists/*

# Copy the installed Python packages from the builder stage
COPY --from=backend-Builder /usr/local/lib/python3.9/site-packages /usr/local/lib/python3.9/site-packages

# Copy the rest of the application code
COPY . .

# Specify the command to run your application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
