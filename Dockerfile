#set image
FROM python:3.9.1

#set working directory within container
WORKDIR /code

#use requiremnts file to install project requirements 
COPY requirements.txt .
RUN pip install -r requirements.txt

#copy code into working directory
COPY src/ .

#commands to run on container start
##
 
