COMPOSE_VOLUME=test-postgres

dev.full: clean build run
dev.lite: clean run

clean:
	docker-compose stop -t0
	docker-compose rm -f
build:
	docker-compose pull
	docker-compose build

run:
	docker-compose up

data.clean: clean
	-docker volume rm $(COMPOSE_VOLUME)
