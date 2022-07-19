[![CircleCI](https://dl.circleci.com/status-badge/img/gh/nodebeanyaoku/project-ml-microservice-kubernetes/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/nodebeanyaoku/project-ml-microservice-kubernetes/tree/master)

## Project Overview

In this project, I the skills acquired in the Microservices at Scale using AWS & Kubernetescourse to operationalize a Machine Learning Microservice API. 

A pre-trained, `sklearn` model is provided, that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests the ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

The project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test the  project code using linting
* Complete a Dockerfile to containerize this application
* Deploy the  containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that the code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase the abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv with Python 3.8 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
python3 -m venv ~/.devops
source ~/.devops/bin/activate
```
* Run `make install` to install the necessary dependencies
* install lates minikube stable release on x86-64 linux
*curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube


### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally: AWS cloud 9 was used to setuo docker
* Setup and Configure Kubernetes locally on linux : "curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
* Create Flask app in Container: 'kubectl create deploy mlproject --image=$dockerpath'
* Run via kubectl


### Prject Files 

* docker_out.txt: Terminal output which has log info after running prediction to docker container
* kubernetes_out.txt: Terminal output which has log info after running prediction to kubernetes cluster
* config.yml: Circeci config yaml file
* app.py: Flask script
* Dockerfile: The Dockerfile contains all the commands used to build and run a docker image
* make_prediction.sh: The source code is responsible for passing data through a trained, machine learning model, and giving back a predicted value for the house price.
* Makefile: This is used test software, install software, build scripts, collect and run taaks
* requirements.txt: conatins the libraries of install dependencies
* run_docker.sh: To run and build a docker image
* run_kubernetes.sh: To deploy application using kubectl
* upload_docker.sh: upload your built image to docker


