#!/bin/sh

#docker buildx build --platform linux/arm64 -t mytracks/readymedia:latest_arm64 --push .
#docker buildx build --platform linux/arm/v7 -t mytracks/readymedia:latest_arm_v7 --push .
#docker buildx build --platform linux/amd64 -t mytracks/readymedia:latest --push .

docker buildx build --platform linux/arm64,linux/arm/v7,linux/amd64 -t mytracks/readymedia:latest --push .
