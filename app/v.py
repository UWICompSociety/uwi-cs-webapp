import os, hashlib, random
from app import app
from flask import render_template, request, redirect, url_for, flash, session, make_response
from flask_login import login_user, current_user, login_required

###
# Routing for your application.
###

# --------------- Routing Functions -----------------
