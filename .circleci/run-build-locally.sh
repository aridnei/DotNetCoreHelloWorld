#!/usr/bin/env bash
# export CIRCLE_TOKEN=6beebbee1f06a24f917f2a04b8e26533254d2b0f
curl --user ${CIRCLE_TOKEN}: \
    --request POST \
    --form revision=0c4b4ef\
    --form config=@config.yml \
    --form notify=false \
        https://circleci.com/api/v1.1/project/github/aridnei/DotNetCoreHelloWorld/tree/master