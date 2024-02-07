FROM python:3.9
WORKDIR /demo
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5000
CMD ["bash","-c","python manage.py migrate && python manage.py runserver 0.0.0.0:5000"]
