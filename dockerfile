FROM python:3
ENV PYTHONUNBUFFERED 1
WORKDIR /code
COPY . /code/
RUN pip install -r requirements.txt
#RUN echo "from django.contrib.auth.models import User; User.objects.create_superuser('admin', 'admin@admin.ru', 'pass')" | python3 manage.py shell
#RUN python3 manage.py migrate  
EXPOSE 8000
CMD sh init.sh && python3 manage.py runserver 0.0.0.0:8000  

