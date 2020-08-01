#!/bin/sh

if [ "$DATABASE" = "postgres" ]
then
    echo "Waiting for postgres..."

    while ! nc -z $SQL_HOST $SQL_PORT; do
      sleep 0.1
    done

    echo "PostgreSQL started"
fi

# Uncomment below to flush db e.g. after running tests 
python manage.py flush --no-input
python manage.py makemigrations core
python manage.py migrate
python manage.py collectstatic --noinput

exec "$@"