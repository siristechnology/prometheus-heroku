#!/bin/bash

set -e
heroku login
heroku container:login
heroku container:push web -a chargo-p3

heroku container:release web -a chargo-p3
