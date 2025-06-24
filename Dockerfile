FROM blrdbharbor.ozonecloud.ai/ozone-public-registry/ozoneprod/python:3.8-slim-buster

WORKDIR /app
COPY code .
RUN pip3 install -U pip
RUN pwd
RUN ls
RUN pip3 install -r requirements.txt
EXPOSE 3000
ENV AUTOWRAPT_BOOTSTRAP autodynatrace
ENV AUTODYNATRACE_LOG_LEVEL DEBUG

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:3000"]

