FROM python:3.6-alpine

RUN apk add --no-cache --virtual .build-deps g++ libffi-dev openssl-dev

RUN adduser -D ashwin

WORKDIR /home/ashwin

COPY flask_app-req.txt requirements.txt
RUN python -m venv venv

RUN venv/bin/pip install --upgrade pip setuptools
RUN venv/bin/pip install -r requirements.txt

RUN venv/bin/pip install gunicorn pymysql

COPY app app
COPY migrations migrations
COPY microblog.py config.py boot.sh ./
RUN chmod +x boot.sh

ENV FLASK_APP microblog.py

RUN chown -R ashwin:ashwin ./
USER ashwin

EXPOSE 5000
ENTRYPOINT ["./boot.sh"]
