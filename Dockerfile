FROM python:3.4

RUN groupadd -r mg && useradd -r -g mg ming
RUN pip install Flask==0.10.1
WORKDIR /app
COPY app /app
USER ming
CMD ["python","identidock.py"]