FROM python:3.11-slim

WORKDIR /app
COPY . /app

RUN pip install -r requirements.txt
RUN python manage.py migrate

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]