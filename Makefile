install:
	pip install --no-cache-dir -r requirements.txt

run-server:
	uvicorn main:app --host 0.0.0.0 --port 50051

build-image:
	docker image build -t glossary-fastapi .

container-up:
	docker run --rm -p 50051:50051 --name glossary-server glossary-fastapi