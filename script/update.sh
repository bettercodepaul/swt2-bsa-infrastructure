#!/bin/sh

# Update application to run for its current checkout.

set -e
cd "$(dirname "$0")/.."

# Load configuration
source script/_config

script/bootstrap.sh

echo "==> Building frontend..."
script/step/build-angular-application $FRONTEND_DIRECTORY
script/step/provide-angular-dist $FRONTEND_DIRECTORY $DOCKER_FRONTEND_DIRECTORY

echo "==> Building backend..."
script/step/build-maven-application $BACKEND_DIRECTORY
script/step/provide-jar-file $BACKEND_PROJECT_DIRECTORY $BACKEND_PROJECT_JAR_FILE $DOCKER_BACKEND_DIRECTORY
