#!/bin/bash
python manage.py setup_demo --skip_superuser
python manage.py runserver 0.0.0.0:8000