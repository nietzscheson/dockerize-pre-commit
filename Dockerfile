FROM python:3.9 AS base

WORKDIR /core

COPY requirements.txt .

RUN pip3 install --no-cache-dir -r requirements.txt --upgrade pip

COPY . .

RUN chmod 755 pre-commit.sh

RUN ./pre-commit.sh

# ENTRYPOINT [ "./entrypoint.sh" ]
