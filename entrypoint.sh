#!/bin/bash
#
echo "run simple auth at : $PWD"
echo "if you're not define the environment variables, the username password is:
username : admin
password : nidma"
sauth $USERNAMELOGIN $PASSWORDLOGIN 0.0.0.0 $PORT
