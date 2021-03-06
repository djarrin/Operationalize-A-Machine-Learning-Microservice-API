[![CircleCI](https://circleci.com/gh/djarrin/Operationalize-A-Machine-Learning-Microservice-API/tree/main.svg?style=svg)](https://circleci.com/gh/djarrin/Operationalize-A-Machine-Learning-Microservice-API/tree/main)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  
   1. First make sure you have minikube installed: `brew install minikube`
   2. then run: `minikube start`
   3. then run: `./run_kubernetes.sh`
   4. Wait and run `kubectl get pod` and make sure prediction-api is set to "Running"
   5. run `./run_kubernetes.sh` again

### Important Files In Repo
* Dockerfile: Contains logic to spin up and configure the Docker Container
* Makefile: Contains the logical commands to set up python env and lint appropriate files (Docker and app.py)
* requirements.txt: contains application dependencies
* run_docker.sh: Actually builds and runs docker image
* run_kubernetes.sh: sets up kubernetes pods and runs them
* upload_docker.sh: uploads docker image to Docker Hub

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
