FROM python:3.9

COPY ./backend /app/backend
COPY ./requirements.txt /app

WORKDIR /app

RUN python -m pip install --upgrade pip

RUN pip3 install -r requirements.txt

EXPOSE 8000

CMD ["uvicorn", "backend.main:app", "--host=0.0.0.0", "--reload"]
