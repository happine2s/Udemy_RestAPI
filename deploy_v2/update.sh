#!/usr/bin/env bash

set -e

#PROJECT_BASE_PATH='/usr/local/apps/RestAPI-Beginner'

git pull
/usr/local/virtualenvs/profiles_api/bin/python manage.py migrate
/usr/local/virtualenvs/profiles_api/bin/python manage.py collectstatic --noinput
supervisorctl restart profiles_api

echo "DONE! :)"
