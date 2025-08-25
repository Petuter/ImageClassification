# Makefile für Jupyter Notebook

.PHONY: run stop install

install:
	pip install notebook

run:
	jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser

stop:
	@pkill -f "jupyter-notebook"