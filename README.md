# UWI Mona Computing Society's Web App
TODO: desciption

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

Navigate to 127.0.0.1:5000/hello to check if everything is working properly.
