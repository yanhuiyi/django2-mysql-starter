FROM python:3.6
RUN apt-get update \
    && apt-get install -y python3-dev default-libmysqlclient-dev
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/
