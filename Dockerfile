FROM python:3.8-slim

ADD . /app

WORKDIR /app

RUN pip3 install fastapi
RUN pip3 install uvicorn
RUN pip3 install uvloop
RUN pip3 install httptools==0.1.*
RUN pip3 install google-cloud-bigquery

EXPOSE 8000

CMD ["uvicorn", "3:app", "--host", "0.0.0.0", "--reload"]
