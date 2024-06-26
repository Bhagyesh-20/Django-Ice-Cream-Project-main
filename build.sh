set -o errexit

# Modify this line as needed for your package manager (pip, poetry, etc.)
py -m pip install -r requirements.txt

# Convert static asset files
py manage.py collectstatic --no-input

# Apply any outstanding database migrations
py manage.py migrate