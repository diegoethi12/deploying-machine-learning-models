NAME=diegoethi-ml-api


build-ml-api-heroku:
	docker build -t registry.heroku.com/$(NAME)/web:latest .

push-ml-api-heroku:
	docker push registry.heroku.com/${HEROKU_APP_NAME}/web:latest

build-ml-api-aws:
	docker build  -t $(NAME):latest .

push-ml-api-aws:
	docker push ${AWS_ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com/$(NAME):latest

tag-ml-api:
	docker tag $(NAME):latest ${AWS_ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com/$(NAME):latest

