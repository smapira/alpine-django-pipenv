FROM python:3.6-alpine
RUN pip install pipenv
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN apk add --no-cache --update --virtual=deps python-dev libevent-dev gfortran py-pip build-base git
RUN pipenv install
RUN apk del deps
RUN pipenv run python manage.py makemigrations
RUN pipenv run python manage.py migrate
EXPOSE 3000
ENTRYPOINT ["pipenv", "run", "python", "manage.py", "runserver", "0.0.0.0:3000"]
