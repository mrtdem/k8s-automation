ARG PYTHON_VERSION=3.9.9-alpine

FROM python:${PYTHON_VERSION} as builder

RUN apk add gcc musl-dev  mariadb-connector-c-dev 
RUN pip wheel --wheel-dir=/root/wheels  mysqlclient flask
COPY . .

FROM python:${PYTHON_VERSION} as finalimage

COPY --from=builder /root/wheels root/wheels
#copy python file from builder image

RUN apk add mariadb-connector-c-dev 
RUN pip install \
      --no-index \
      --find-links=/root/wheels \
      mysqlclient flask
      
RUN adduser -D dev
USER dev

CMD ["python3", "./app.py"]


