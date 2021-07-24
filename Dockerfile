FROM python:3.7.3-slim

LABEL maintainer="Udit Joshi"


COPY . /app

WORKDIR /app

RUN pip install -r requirements.txt \
    && pip install flask_sqlalchemy \
    && pip install gunicorn


EXPOSE 5000

ENTRYPOINT ["./gunicorn_starter.sh"]





# Build command - sudo docker build -t pagination_demo .

# Run command - sudo docker run -p 5000:5000 pagination_demo
