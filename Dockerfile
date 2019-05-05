FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python-pip python3.7 build-essential
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt

RUN useradd -m myuser
USER myuser
ENV PORT=5000
CMD gunicorn --bind 0.0.0.0:$PORT wsgi
