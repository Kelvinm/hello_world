# Debian build of python 3.6 (2862 starts on dockerhub)
FROM python:latest
MAINTAINER Kelvin Malyar "kelvin.malyar@gmail.com"

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

