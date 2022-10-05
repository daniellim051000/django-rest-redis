# load python 3.8 dependencies using slim debian 10 image.
FROM python:3
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt  /code/
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt
COPY . /code/
EXPOSE 8000
STOPSIGNAL SIGINT
ENTRYPOINT ["python", "manage.py"]
CMD ["runserver", "0.0.0.0:8000"]