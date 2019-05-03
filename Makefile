up:
	docker build -t flask-pupper:latest .
	docker run -d -p 5000:5000 --name flask-app flask-pupper

down:
	docker stop flask-app
	docker rm flask-app
	docker image rm flask-pupper

push:
	docker tag flask-pupper leosquared/pupper:latest
	docker push leosquared/pupper:latest