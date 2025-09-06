#!/bin/bash

# Create main app folders
mkdir -p app/{api/v1/endpoints,core,models,schemas,db,services,tests,utils}

# Create init files
touch app/{__init__.py,main.py,config.py}
touch app/api/{__init__.py,dependencies.py}
touch app/api/v1/{__init__.py,routes.py}
touch app/api/v1/endpoints/{__init__.py,users.py,auth.py,items.py}
touch app/core/{__init__.py,security.py,logging.py,events.py}
touch app/models/{__init__.py,user.py,item.py}
touch app/schemas/{__init__.py,user.py,item.py}
touch app/db/{__init__.py,base_class.py,session.py}
touch app/services/{__init__.py,user_service.py}
touch app/tests/{__init__.py,test_users.py,test_items.py}
touch app/utils/{__init__.py,logger.py,email.py}

# Project root files
touch .env requirements.txt Dockerfile README.md

# Alembic migrations folder
mkdir -p alembic

echo "✅ FastAPI folder structure created in current directory"