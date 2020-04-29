## The Makefile includes instructions on environment setup and lint tests
# Create and activate a virtual environment
# Install dependencies in requirements.txt
# Dockerfile should pass hadolint
# app.py should pass pylint
# (Optional) Build a simple integration test

setup:
	#Create python environment and source it
	#source ~/.dev-ops/bin/activate
	python3 -m venv ~/.dev-ops

install:
	#This should be running inside an environment
	pip3 install --upgrade pip &&\
		pip3 install -r requirements.txt
	sudo apt-get install -y python-pkg-resources


test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	# See local hadolint install instructions:   https://github.com/hadolint/hadolint
	# This is linter for Dockerfiles
	docker run --rm -i hadolint/hadolint < Dockerfile

	# This is a linter for Python source code linter: https://www.pylint.org/
	# This should be run from inside a virtualenv
	pylint --disable=R,C,W1203,W1202 app.py

all: install lint test
