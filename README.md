# alpine-django-pipenv Minimal django image (virtual xxx MB)

This is a *VERY* small mri django Image, based on the [python:3.6-alpine](https://hub.docker.com/_/python/).

## Install

As a prerequisite, you need [Docker](https://docker.com) and [pipenv](https://github.com/pypa/pipenv) to be installed.

## Usage
To run:

	docker build -t smapira/alpine-django-pipenv .
	docker run -d -p 3000:3000 --name alpine-django-pipenv smapira/alpine-django-pipenv
	open http://localhost:3000/

## Debug
#### Command line history

	pipenv --python 3.6.5
	pipenv install django
	pipenv shell
	django-admin startproject myproject
