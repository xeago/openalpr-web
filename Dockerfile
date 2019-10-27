FROM python:2-slim

LABEL maintainer Ali Shanaakh <ashanaakh@gmail.com>

RUN apt-get update && apt-get install -y python-pip python-openalpr
RUN pip install flask openalpr

COPY . .

EXPOSE 8080

CMD ["python", "server.py"]
