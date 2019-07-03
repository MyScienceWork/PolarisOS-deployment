PolarisOS: Deployment
==============================================

![PolarisOS logo](polarisos_logo.jpg)

Polaris OS is an archiving solution oriented data processing and analysis to the services of scientific institutions. This is a major technological breakthrough to improve data management, research impact analysis and user experience. MyScienceWork has chosen to share the Polaris OS code on GitHub. This choice responds to the need for research institutes to have open, independent and sustainable solutions. In a constantly changing tech environment, the start-up believes in the importance of sharing knowledge.

Requirements:

* docker-compose 1.24.0

## Getting started

You can start a demonstration of PolarisOS with docker-compose.
A provided `docker-compose.yml` file will provision the following set of services:

- elasticsearch (database)
- app (PolarisOS application)
- bootstrap (sample data to start with PolarisOS)

To start, clone this repository : 
```
git clone https://github.com/MyScienceWork/PolarisOS-deployment.git
```
Start application stack with docker-compose :
```
docker-compose up
```

Running CTRL+C will stop the containers.

Administration account :

- email: admin@mysciencework.com
- password: admin

**This repository is for demonstration purpose only DO NOT USE IT IN PRODUCTION**

## Start development

To start using PolarisOS, we recommend that you begin with the "How to develop the solution?"
section in [the PolarisOS documentation](https://mysciencework.github.io/PolarisOS/manual/deployment.html).


