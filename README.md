# alembic-base

This repository provides a base structure for projects using Alembic, a lightweight database migration tool for SQLAlchemy. Use this project as a starting point to manage database schema changes efficiently.

> [!NOTE]
> Useful links:
> * https://alembic.sqlalchemy.org/en/latest/tutorial.html

## Usage

### Creating and activating the virtual environment

#### Windows
To create and/or activate the virtual environment, run:
```
activate_venv.ps1
```

Add packages to **venv_cfg/requirements.txt** if needed.

For updating the virtual environment (i.e. recreate it based on requirements.txt), simply run: 
```
activate_venv.ps1 -u 
#or 
activate_venv.ps1 -update
```

### Environment variables
This project uses .env file to contruct the database connection url.

The .env file is automatically generated (if it doesn't yet exist) from the example file when activating the virtual environment.

### Alembic usage

#### Generating a Migration Script
```
alembic revision -m "revision description here"
```

#### Applying Migrations
```
alembic upgrade head
```

#### Downgrading migrations
```
alembic downgrade
```