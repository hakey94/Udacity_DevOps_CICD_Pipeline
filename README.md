# Udacity_DevOps_CICD_Pipeline
This is project 2 of udacity course.


Overview
In this project, we are going to:
 - Clone github repository to Azure Cloud Shell via SSH key
 - Setup Pylint and pytest to run in GitHub Action
 - Deploy WebApp
 - Setup a CI/CD pipeline in Azure DevOps

(image 1):
![Untitled Diagram](https://github.com/hakey94/Udacity_DevOps_CICD_Pipeline/assets/7892715/aaa40933-e775-42f3-a69e-4fbee1228b21)

Project Plan
- Trello: https://trello.com/invite/b/I5oEDA2v/ATTI6dfc87bf9a9f9d3f08117a013b085d224BC00336/hald-udacity-build-ci-cd-project
- Project plan: Relate with "project-management-template.xlsx" file

Instruction
Clone the repository from Github via SSH key.
- Using cloud shell
- create ssh key by using command: ssh-keygen -t rsa -> relate solution image
![2  Create ssh key](https://github.com/hakey94/Udacity_DevOps_CICD_Pipeline/assets/7892715/2dae94be-5422-4b5a-8d62-a57e479fd2da)

- run this command to show ssh key generated: cat /home/odl_user/.ssh/id_rsa.pub
- add key to Github. In Github setting , click on SSH and GPG keys and create new ssh key
![3  Add key to github account](https://github.com/hakey94/Udacity_DevOps_CICD_Pipeline/assets/7892715/3fd4070c-52f0-4e80-9219-e0fcd1b3880a)
- clone the project using this command: git clone [link github]

Run App
- Change directory to you Repository by using command: cd [YourRepository]
- Create virtual environment: make setup
- active virtual environment: source ~/.udacity-devops/bin/activate
- install requirement.txt and run test: make all

![6  make all](https://github.com/hakey94/Udacity_DevOps_CICD_Pipeline/assets/7892715/23f2a8a8-b6fa-4936-8b0d-511959a88a58)

Deploy app to Azure App Service
- Deploy the web app using cli: az webapp up -g Azuredevops -l "west europe" --sku F1 -n hald-udacity-devops
![9 2 domain](https://github.com/hakey94/Udacity_DevOps_CICD_Pipeline/assets/7892715/50e3e999-5b40-49de-b198-75f3b151cdc3)

Test the deployed app
- config file make_predict_azure_app.sh and run

![10  Update url](https://github.com/hakey94/Udacity_DevOps_CICD_Pipeline/assets/7892715/93b28603-62a6-4beb-ab37-cc34aaeba9d2)

Setup CI in github
- create new workflow
- commit file modified: pythonapp.yml
- triggerd automatically when commit

![12  Action build](https://github.com/hakey94/Udacity_DevOps_CICD_Pipeline/assets/7892715/d5613a0f-6ce6-4278-8281-220389170bb5)
![action build](https://github.com/hakey94/Udacity_DevOps_CICD_Pipeline/assets/7892715/63060ba0-7fb0-4432-b483-475b4f98e92b)


Create Azure Devops project
- Go to azure devops website: https://dev.azure.com
- Create new project with visibility is public

![12  Create new project](https://github.com/hakey94/Udacity_DevOps_CICD_Pipeline/assets/7892715/2eb19887-4803-4484-a16d-6619be59196e)
- create new service connection
![13  Create connections](https://github.com/hakey94/Udacity_DevOps_CICD_Pipeline/assets/7892715/8f9ec10b-b1b5-4658-8e1e-37824317a648)
![13 1 Create connection](https://github.com/hakey94/Udacity_DevOps_CICD_Pipeline/assets/7892715/6f416f37-a019-42de-b858-07c3a2b4d136)
![13 2  Create connection](https://github.com/hakey94/Udacity_DevOps_CICD_Pipeline/assets/7892715/73843cc6-bfab-4dc3-8d02-d8c5a5e9f4b7)

Create CI/CD in Azure DevOps
- On Azure Devops create new pipeline
![14  Create pipeline](https://github.com/hakey94/Udacity_DevOps_CICD_Pipeline/assets/7892715/0a1fcef9-d371-48fe-b117-95945facee3f)
- connect with github
![14 1  Connect with github repository](https://github.com/hakey94/Udacity_DevOps_CICD_Pipeline/assets/7892715/74594c8b-f715-43dd-acce-722a544b3c2c)

- choose existing yaml file: azure-pipelines.yml
![14 2  Pick existing yaml file](https://github.com/hakey94/Udacity_DevOps_CICD_Pipeline/assets/7892715/561589a1-58af-498f-851f-6dad4d809796)
- result
![16  run pipeline success](https://github.com/hakey94/Udacity_DevOps_CICD_Pipeline/assets/7892715/a7e81038-0ddf-4c07-8097-9f03538f4834)

Demo video
https://youtu.be/upNW-rQhUII



