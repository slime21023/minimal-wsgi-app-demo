# Base Image 
FROM python:3.12.5-slim as build

# Install Dependencies 
RUN apt-get update -y && apt-get install -y build-essential 
COPY ./requirements.txt requirements.txt
RUN pip3 install --no-cache-dir --target=packages -r requirements.txt

# Runtime Stage 
FROM python:3.12.5-slim as runtime

COPY --from=build packages /usr/lib/python3.12/site-packages
ENV PYTHONPATH=/usr/lib/python3.12/site-packages

RUN pip3 install --no-cache-dir hypercorn[uvloop]

WORKDIR /app
COPY ./src .

EXPOSE 8000
CMD ["hypercorn", "-k", "uvloop", "-b", "0.0.0.0:8000", "main:app"]