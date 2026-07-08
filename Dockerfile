FROM python:3.10.20

WORKDIR /projetz

COPY app.py .

CMD ["python3","app.py"]
