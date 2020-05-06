[![CircleCI](https://circleci.com/github/ed36cuir/Project5-Docker-Kube.svg?style&circle-token=7cf2cd530619e34faccbf9f288f14c2534469eed)](https://app.circleci.com/pipelines/github/ed36cuir/Project5-Docker-Kube)

# Project5-Docker-Kube
Operationalize microservices by deploying a machine an API using docker &amp; kubernetes.

In this project, I applied the skills i learn in Udacity's Machine Learning Microservices

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). `app.py`— serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling. Free of use.

The rubrics that cover this project are listed [here](https://review.udacity.com/#!/rubrics/2576/view).

## Setup the Environment

* You should have python 3.6 or up and have virtualenv if you want to run it in a virual Environment. To create one, `make setup` and source it using `python3 -m venv ~/.dev-ops` and `source ~/.dev-ops/bin/activate`

* Create a virtualenv and activate it.

Run 'make setup'

* Run `make install` to install the necessary dependencies.

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

#### After running app.py, open another terminal and enter your file with acceptable data.
For more information, click [here](https://www.kaggle.com/c/boston-housing).
