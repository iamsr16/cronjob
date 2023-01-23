# Python Base Image
FROM python:3.9-alpine

# giving user name. which is not executed by docker
MAINTAINER nithin

# Creating Working 
WORKDIR /py_cronjob

# Copying the crontab file 
COPY crontab /etc/cron.d/crontab

# Copy the each file from docker_py_project to py_cronjob in docker container
ADD . /py_cronjob

# run the crontab file
RUN crontab /etc/cron.d/crontab

# Executing crontab command
CMD ["cron", "-f"]
