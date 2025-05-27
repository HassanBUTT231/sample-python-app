FROM 099199746132.dkr.ecr.us-east-1.amazonaws.com/python-app-build-base:latest

WORKDIR /app

COPY requirement.txt .
RUN pip install --no-cache-dir -r requirement.txt

COPY app.py .

EXPOSE 5000

CMD ["python", "app.py"]
