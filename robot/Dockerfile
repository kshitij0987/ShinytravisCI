# Dockerfile
# Base image
FROM python:alpine3.7
COPY requirements.txt /tmp/requirements.txt
RUN  pip install -r /tmp/requirements.txt
# Copy test project files to the image folder
# We need wget to set up the PPA and xvfb to have a virtual screen and unzip to install the Chromedriver
COPY . /tests
WORKDIR /tests
RUN chmod +x wait-for-it.sh