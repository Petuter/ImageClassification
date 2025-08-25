# Makefile für Jupyter Notebook


install:	
	pip3 install --upgrade pip &&\
		pip3 install -r requirements.txt

test:
	python -m pytest -vv --cov=main --cov=mylib test_*.py

format:	
	black *.py 

lint:
	pylint --disable=R,C --ignore-patterns=test_.*?py *.py mylib/*.py

deploy:
	#

all: install lint test format deploy

