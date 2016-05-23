Dockerized aws-cli
======

This [docker-alpine](https://github.com/gliderlabs/docker-alpine) based image wraps the [AWS CLI](http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html) application.

### Quick Start: 

    docker run \
      --rm \
      -it \
      -e AWS_DEFAULT_REGION="eu-west-1" \
      -e AWS_ACCESS_KEY_ID="${AWS_ACCESS_KEY_ID}" \
      -e AWS_SECRET_ACCESS_KEY="${AWS_SECRET_ACCESS_KEY}" \
      quay.io/hellofresh/awscli ec2 describe-instances --max-items 1


