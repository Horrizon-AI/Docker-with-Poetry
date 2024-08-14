FROM python:3.11.5-alpine

ENV PYTHONBUFFERED=1

# Set the working directory
WORKDIR /app

# Install dependencies
COPY poetry.lock pyproject.toml ./
RUN pip install --upgrade pip && \
    pip install poetry && \
    poetry config virtualenvs.create false

ARG DEV=false
RUN if [ "$DEV" = "true" ]; then poetry install --with dev; else poetry install --only main; fi

COPY . /app

EXPOSE 8080
CMD ["uvicorn", "startup:app", "--host", "0.0.0.0", "--port", "80"]
