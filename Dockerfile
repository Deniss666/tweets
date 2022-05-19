FROM python:3.7-alpine
ADD main.py, example.py, query.py, tweet.py, user.py
RUN apk add --update --no-cache g++ gcc libxslt-dev && adk add bash
RUN ['mkdir', '/app']
COPY . ./app
RUN pip install -r requirements.txt
CMD ["python", "./example.py"]
