FROM python:3.9-slim
WORKDIR /app
# 复制 requirements.txt 并安装依赖（通常先复制依赖文件以利用缓存）
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "main.py"]
