FROM nginx:latest
FROM ubuntu

RUN apt update
RUN apt install python3 python3-pip -y
RUN pip3 install flask

WORKDIR /new_project

COPY . /new_project

EXPOSE 80

CMD python3 /new_project/app.py
