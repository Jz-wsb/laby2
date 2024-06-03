FROM tiangolo/uwsgi-nginx:python3.11
WORKDIR /laby2
COPY . /laby2
RUN pip install --no-cache-dir -r requirements.txt
ENV FLASK_APP=app.py
EXPOSE 5000
CMD ["flask", "run", "--host=0.0.0.0"]