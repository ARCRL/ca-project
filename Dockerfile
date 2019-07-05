FROM ubuntu:18.04
RUN apt update -y
RUN apt install -y python-pip python-dev build-essential

COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r /usr/src/app/requirements.txt

COPY run.py /usr/src/app/
COPY config.py /usr/src/app/
COPY app/ /usr/src/app/app/

EXPOSE 5000

CMD ["python", "/usr/src/app/run.py"]