FROM python:3.10-slim

WORKDIR /app
COPY . .

RUN pip install --no-cache-dir --user .
ENV PATH=/root/.local/bin:$PATH

CMD ["python_project_boilerplate"]
