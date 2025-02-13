FROM python:slim

WORKDIR /app

COPY requirements.txt ./

RUN apt-get update && apt-get install python3-pip -y

RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]
