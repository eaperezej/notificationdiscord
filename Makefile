.PHONY: install lint test all 

install:
	pip install --upgrade pip && pip install -r requirements.txt

lint:
	flake8 . --exclude .venv --max-complexity=10 --count

test:
	pytest tests/

all: install lint test
