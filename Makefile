setup:
	python3 -m venv ~/.Udacity_DevOps_CICD_Pipeline

install:
	pip install --upgrade pip && pip install -r requirements.txt

test:
	python -m pytest -vv test_hello.py


lint:
	pylint --disable=R,C hello.py

all: install lint test