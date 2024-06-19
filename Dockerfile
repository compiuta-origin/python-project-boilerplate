FROM python:3.10-slim

# Do not buffer logs
ENV PYTHONUNBUFFERED 1
ENV PATH=/root/.local/bin:$PATH

WORKDIR /app

COPY requirements.txt .
RUN apt-get update && \
    pip install --no-cache-dir --user  --no-warn-script-location -r requirements.txt

COPY . .
RUN pip install --no-cache-dir --user  --no-warn-script-location .

CMD ["python_project_boilerplate"]
