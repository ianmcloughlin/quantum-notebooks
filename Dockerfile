FROM jupyter/scipy-notebook
WORKDIR /home/jovyan/repo
USER root
RUN apt update && apt -y upgrade && apt -y install git
USER jovyan
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 8888