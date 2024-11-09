# Two_Tier_App

A simple two-tier web application using Docker, Django, and a database.

## Prerequisites

Before running the application, ensure the following are installed:

- **Docker Desktop** (for managing Docker containers)
- **Docker Compose**
- **Python 3.8+**
- **pip** (Python package manager)

## Installation

1. **Clone the repository**:

   ```bash
   git clone https://github.com/thepawankrtiwari/Two_Tier_App.git
   cd two-tier-app
   
2. **Set up your environment variables in a .env file**:

  ```bash  
  plaintext
  Copy code
  DATABASE_NAME=your_db_name
  DATABASE_USER=your_db_user
  DATABASE_PASS=your_db_password
  DATABASE_HOST=localhost
  DATABASE_PORT=5432
  SECRET_KEY=your_SECRET_KEY
  DEBUG=your_DEBUG
  ```

3. **Build the Docker images**:

```bash
docker-compose build
```
4. **Start the application:Start the application**:

```bash 
docker-compose up -d
```
---
Note: Docker Desktop is required to run this application.


## Application and Database Screenshots
**Once the application is up and running, you can access the frontend by navigating to http://localhost:8000.**

### _Frontend Screenshot_
![img2](https://github.com/user-attachments/assets/4da73e52-0083-49ea-937c-d428c4458190)


### _Database Screenshot_
![img1](https://github.com/user-attachments/assets/13b9f8b8-6ea7-45b4-975d-3a909fe2501b)


### _Docker Containers_
![Screenshot 2024-10-06 124134](https://github.com/user-attachments/assets/b2758e01-415e-4787-9afe-c72ac37ec3cc)

### _Background Process_
![Screenshot 2024-10-06 124435](https://github.com/user-attachments/assets/e62a314a-8318-48fc-b879-8794d6e11181)
