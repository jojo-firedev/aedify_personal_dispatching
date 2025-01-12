# MVP of a Full Stack Personal Dispatching

## Docs

API Docs with SwaggerUI while running backend on: [http://127.0.0.1:8000/swagger](http://127.0.0.1:8000/swagger/)

## Setup

### Dev Enviroment

#### Backend

- Install Python 3.13.1
- Go to server/ folder: `cd server`
- Create Python virtual env: `python -m venv .venv`
- Activate new virtual env on Windows: `.\\.venv\Scripts\activate`
- Install all required packages: `pip install -r .\server\requirements.txt`
- Run backend: `python manage.py runserver`

#### Frontend

- Install Flutter Framework in Version 3.27.1
- Go to app/ folder: `cd app`
- Install all dependencies: `flutter pub get`
- Generate Build Files: `dart run build_runner build`
- Run app: `flutter run`
