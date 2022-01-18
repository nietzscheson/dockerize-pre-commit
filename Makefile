.PHONY:

init: down up logs

pull:
	docker-compose pull
build: pull
	docker-compose build
up: build
	docker-compose up -d
down:
	docker-compose down -v --remove-orphans
logs:
	docker-compose logs
prune:
	make down
	docker volume prune -f
	docker system prune -f
test:
	docker-compose run --rm core python -m unittest
