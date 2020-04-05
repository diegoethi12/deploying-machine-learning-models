NAME=diegoethi-ml-api


build-ml-api-heroku:
	docker build -t registry.heroku.com/$(NAME)/web:latest .

push-ml-api-heroku:
	docker push registry.heroku.com/${HEROKU_APP_NAME}/web:latest
