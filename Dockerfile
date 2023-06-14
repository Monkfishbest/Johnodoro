# The comments here are intended to give an insight into my thought process and also as general notes to consolidate my learning. 

# sets base image 
FROM python:3.9


# Setting enviromental variables for the flask app, 
# Points flask at app.py as a means to start the appliction - kinda like an entry point? 
ENV FLASK_APP=app.py  
# Spefices what port the flask App should run on
ENV FLASK_RUN_PORT=5000

# sets the relative path for commands creates the folder if it's not there, basically this is the folder we are working out of
WORKDIR /johnodoro

# copies the folders to johnodoro folder in the docker container
COPY application /johnodoro/application
COPY requirements.txt /johnodoro


# installs Flask and Jinja2
# --no-cahche-dir tells pip not to chache any installs 
# -r lets pip know this is a file of the requirements to install
RUN pip install --no-cache-dir -r requirements.txt

# serves as metadata to indicate which ports should be exposed when the container is run. - not really sure what impact this will have? I guess it just shows what ports should have stuff running on it? 
EXPOSE 5000 

# runs thease commands when we "docker run"
CMD ["python3", "/johnodoro/application/app.py"]


