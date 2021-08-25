FROM python:stretch
COPY . /Udacity-EKS-Deployment
WORKDIR /Udacity-EKS-Deployment
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
