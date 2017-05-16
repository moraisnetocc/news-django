FROM python:2.7

WORKDIR /app/

COPY . .
ENV DATABASE_URL=postgres://newsdb:newsdb@db/newsdb
RUN pip install -r requirements.txt && python manage.py collectstatic --noinput
