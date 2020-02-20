## Overview

Package/libaries will be installed as,
- Python 3.6
- Django 2.2
- MySQL 5.7
- mysqlclient 1.4.0
- django-mysql 3.3.0

Docker compose and Docker file to start up a web app development environment on top of Django(2.2), Python(3.6) and MySQL(5.7).

Inspired by following posts,

- [Quickstart: Compose and Django](https://docs.docker.com/compose/django/)
- [Django Image](https://hub.docker.com/_/django/)

Usage:
1. Run `sudo docker-compose run web django-admin startproject <Your web-app name> <Your web-app directory>`
2. Open and edit file of <you named app directory>/settings.py to replace 'default' section lines by, for example,

  ```
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': '<your db name>', # for example, root
        'USER': '<user name matching in docker-compose.yml file>', # for example, root
        'PASSWORD': '<user name matching in docker-compose.yml file>', # for example, root
        'HOST': '<db service name to match db service name defined in docker-compose.yml file>', # for example, db
        'PORT': '3306',
    }
   ```
3. Run `docker-compose up`
4. Have you seen output with a success output, *Starting development server at http://0.0.0.0:8000/*, it should be a ready development environment.

## Dependencies
- [Django-mysql](https://django-mysql.readthedocs.io/en/latest/installation.html)
- [mysqlclient](https://pypi.org/project/mysqlclient/)
