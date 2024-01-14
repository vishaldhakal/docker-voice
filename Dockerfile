FROM python:3.9.18

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 3000

CMD ["flask", "run", "--host=0.0.0.0", "--port=3000"]

