FROM python:3.7.9 as builder

RUN apt-get update && apt-get install tzdata

COPY . /telegram-pm-chat-bot

ENV TZ=Asia/Shanghai

WORKDIR /telegram-pm-chat-bot

RUN pip3 install -r /telegram-pm-chat-bot/requirements.txt

CMD ["python3", "main.py"]