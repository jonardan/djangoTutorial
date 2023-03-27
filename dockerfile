from python:3.10.10

# setup environment variable  
ENV PYTHONUNBUFFERED=1  
 

# where your code lives  
WORKDIR /code

# install dependencies  
RUN pip install --upgrade pip  

COPY requirements.txt .
# run this command to install all dependencies  
RUN pip install -r requirements.txt  
# port where the Django app runs  
COPY . .
EXPOSE 8000  
# start server  
CMD ["python", "manage.py", "runserver"]  