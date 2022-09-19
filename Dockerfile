FROM python:3

WORKDIR /usr/src/app

#COPY requirements.txt ./

USER root
RUN apt-get update
RUN apt-get upgrade -y
RUN apt install -y zip
RUN apt install -y curl
RUN apt-get install python3.6 python3-pip -y

COPY . .

CMD [ "python", "./scripts/main.py" ]