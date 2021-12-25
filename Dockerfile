# Dockerfile >> Image >> Container


FROM python:3.7

ADD app.py .
ADD requirements.txt .
ADD Procfile .
COPY templates/ ./templates/
RUN ls -la /templates/

COPY static/ ./static/
RUN ls -la /static/


RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

CMD [ "python", "./app.py" ]
