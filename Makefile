deps: 
	pip install -r requirements.txt; \
	pip install -r test_requirements.txt
lint:
	flake8 hello_world test
run:
	python.main.py
.PHONY: test
test:
	PYTHONPATH=. py.test --verbose -s
docker_build:
	docker build -t hello-world-printer .
USERNAME=Milosz0
TAG=$(USERNAME)/hello-world-printer-k3
docker_push: docker_build
	@docker login --username $(USERNAME) --password $${Mm.691640406}; \
	docker tag hello-world-printer $(TAG); \
	docker push $(TAG); \
	docker logout;