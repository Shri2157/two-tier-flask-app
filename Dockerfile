From python:3.9-slim
Workdir /app
Run apt-get update &&  apt-get upgrade -y  && \ 
    apt-get install -y gcc default-libmysqlclient-dev pkg-config && \
    rm -rf /vat/lib/apt/lists/*
COPY requirements.txt .
run pip install mysqlclient
run pip install --no-cache-dir -r requirements.txt
copy . .
CMD  ["python" , "app.py"] 
