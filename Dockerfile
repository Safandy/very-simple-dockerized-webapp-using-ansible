FROM python:alpine
WORKDIR /app
COPY . /app
##This ensures dependencies are installed first and cached properly
RUN pip install --no-cache-dir -r requirements.txt  
EXPOSE 5000
CMD ["python","app.py"]