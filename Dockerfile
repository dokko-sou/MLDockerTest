FROM python:3.8.2

RUN apt-get update && apt-get upgrade -y

RUN pip3 install numpy
RUN pip3 install scipy
RUN pip3 install matplotlib
RUN pip3 install scikit-learn

RUN apt-get clean && rm -rf /var/lib/apt/lists/*
