FROM python:3.9-buster

ADD requirements.txt /requirements.txt
ADD okteto-stack.yaml /okteto-stack.yaml
ADD manage.py /manage.py

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8000

COPY ./notes_app /notes_app

CMD ["python3", "manage.py", "runserver"]