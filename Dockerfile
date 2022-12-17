FROM python:3.8-slim

ENV NO_LOG_FILE=Yes
ENV TZ=Asia/Taipei

WORKDIR /app

COPY requirements.txt /app/.

RUN pip3 install -r requirements.txt

COPY . /app

CMD ["python3", "main.py"]