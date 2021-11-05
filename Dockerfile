##################Dockerfile##################
FROM openjdk:8

RUN apt-get update
RUN apt-get install -y bzip2 
RUN apt-get install -y wget
RUN apt-get install -y gcc 
RUN apt-get install -y git 
RUN apt-get install -y curl

RUN apt-get update
RUN apt-get install -y python3-dev
RUN apt-get install -y python3-pip

RUN pip3 install Werkzeug==0.16.1

RUN pip3 install Flask==1.1.1
RUN pip3 install gunicorn==20.0.4
RUN pip3 install scikit-learn==0.23.2
RUN pip3 install numpy==1.17.3
RUN pip3 install pickle4==0.0.1
RUN pip3 install sklearn==0.0
RUN pip3 install pandas==0.25.2

WORKDIR /root

RUN echo "sd1g5sg1s15"

RUN git clone https://github.com/yanliang12/yan_flask_webpage.git
RUN mv yan_flask_webpage/* ./

EXPOSE 5000

WORKDIR /root

RUN python3 mlmodel.py 

CMD python3 app.py

##################Dockerfile##################
