# https://mherman.org/presentations/dockercon-2018/
# https://testdriven.io/blog/dockerizing-django-with-postgres-gunicorn-and-nginx/

FROM ubuntu

WORKDIR /usr/src/app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN apt update
RUN apt install -y nginx
# RUN pip install --upgrade pip
# COPY ./requirements.txt /usr/src/app/requirements.txt
 
COPY constituicao.com /etc/nginx/sites-available

RUN ln -s -f /etc/nginx/sites-available/constituicao.com /etc/nginx/sites-enabled/default

COPY /site /var/www/constituicao.com

EXPOSE 80
CMD ["nginx","-g","daemon off;"]
