# UWI Mona Computing Society's Web App
TODO: description

# Requirements 
* python 3.6
* postgresql

# Setup 

### Linux & MacOS
Assuming you are using bash as your shell. After cloning the repo, navigate to the uwi-cs-webapp folder in your terminal. In that folder, enter 

To create a virtual environment.

`python3 -m venv ./venv` 

To activate virtual environment.

`source ./venv/bin/activate`

To install all requirements.

`pip3 install -r requirements.txt`

To run development server.

`export FLASK_CONFIG=development`

`export FLASK_APP=run.py`

`flask run`

Navigate to 127.0.0.1:5000 in your browser to check if everything is working properly.


### Windows
Download and install git which includes git bash. Using git bash as your shell, clone the repo, and navigate to the uwi-cs-webapp folder in your terminal. In that folder, enter 

To create a virtual environment.

`python -m venv ./venv` 

To activate virtual environment.

`./venv/Scripts/activate.bat`

To install all requirements.

`pip install -r requirements.txt`

To run development server.

`export FLASK_CONFIG=development`

`export FLASK_APP=run.py`

`flask run`

Navigate to 127.0.0.1:5000 in your browser to check if everything is working properly.


# Website requirements
https://docs.google.com/document/d/1roVEoeM9OlwazfNmCuOj9uCMbijJqFAYO8rB8X7wwh8/edit?usp=sharing

# What we'll be developing? 
![alt text](https://github.com/UWICompSociety/uwi-cs-webapp/blob/master/mockups/mock1.png "Website mockup1")

![alt text](https://github.com/UWICompSociety/uwi-cs-webapp/blob/master/mockups/mock2.png "Website mockup2")

![alt text](https://github.com/UWICompSociety/uwi-cs-webapp/blob/master/mockups/mock3.png "Website mockup3")

![alt text](https://github.com/UWICompSociety/uwi-cs-webapp/blob/master/mockups/mock4.png "Website mockup4")

# Contributions

Follow these general guidelines when contributing to the project.

* Fork the repo.
* Clone your forked repo.
* Create a branch with the name of the feature or fix you are implementing.
* Notify group(on whatsapp, just to prevent multiple people doing the same thing) of feature you are working on.
* Add your feature or fixes.
* Commit the code to your forked repo and ofcourse newly created branch.
* When you are done working on your feature or changes and have tested sufficiently, merge your feature/fix branch with your local development branch then create a pull request.
* Your code will be reviewed, feedback may be given.
* Your final code will then be merged into the development branch on the main repo and you will be added as a contributor to the project.

# Contributors 
  * [@daytonallen](https://github.com/daytonallen)
  * [@renzy101](https://github.com/renzy101)
