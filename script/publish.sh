#!/bin/bash

set -e
heroku login
heroku container:login
heroku container:push web -a devpolls-prometheus

heroku container:release web -a devpolls-prometheus
