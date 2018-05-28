# Debian build of python 3.6 (2862 starts on dockerhub)
FROM python:latest
MAINTAINER Kelvin Malyar "kelvin.malyar@gmail.com"

# I'm starting to dislike jenkins
RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz

RUN groupadd docker
RUN usermod -aG docker jenkins

# MOVE FILES INTO CONTAINER (we take only from the high level what we need not to have cruft in the container, keep it slim)
COPY hello_world /app
COPY requirements.txt requirements.txt

# INSTALL PROJECT DEPENDENCIES
RUN pip install -r requirements.txt

# START PROJECT
WORKDIR /app
ENV FLASK_APP app.py

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]

