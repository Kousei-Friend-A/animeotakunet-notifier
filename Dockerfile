FROM python:3.8

WORKDIR /notify
COPY requirements.txt /notify/

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y

RUN pip3 install -r requirements.txt

COPY . /notify/

CMD python3 channelnotifier.py
