FROM python:3.10.20

WORKDIR /appli

COPY app.py .

CMD ["python3","app.py"]
