FROM python:3.10-alpine
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY app.py .
EXPOSE 5000
CMD ["python", "app.py"]
root@ip-172-31-96-97:/home/ubuntu/ci#
