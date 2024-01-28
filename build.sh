# load .env
set -o allexport
source .env
set +o allexport

# build
python3 setup.py sdist bdist_wheel

# upload
twine upload -u $PYPI_USERNAME -p $PYPI_PASSWORD dist/*

# clean
rm -rf dist build *.egg-info