rm db.sqlite3

rm -rf core/migrations/*
rm -rf accounts/migrations/*
rm -rf contacts/migrations/*
rm -rf listings/migrations/*
rm -rf documents/migrations/*

python manage.py migrate admin zero
python manage.py migrate auth zero
python manage.py migrate contenttypes zero
python manage.py migrate sessions zero

python3 manage.py makemigrations accounts
python manage.py makemigrations core

python manage.py migrate

python manage.py makemigrations documents
python manage.py makemigrations listings
python manage.py makemigrations contacts

python manage.py migrate

# python manage.py createsuperuser
