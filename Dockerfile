FROM python:2.7.5 as builder

RUN apt-get update && apt-get install tzdata

COPY . /telegram-pm-chat-bot

ENV TZ=Asia/Shanghai

WORKDIR /telegram-pm-chat-bot

RUN pip install -r /telegram-pm-chat-bot/requirements.txt

CMD ["python", "main.py"]