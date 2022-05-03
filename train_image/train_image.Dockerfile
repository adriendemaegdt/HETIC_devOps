FROM python:3.8-slim-buster


COPY requirements.txt requirements.txt
COPY train.py train.py



RUN pip3 install -r requirements.txt

# RUN python3 train.py

CMD [ "python3", "train.py"]
# CMD au lieu de run python 