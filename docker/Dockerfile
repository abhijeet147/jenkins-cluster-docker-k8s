FROM alpine:latest

RUN apk update && \
    apk add openjdk11 wget curl git bash

# Jenkins install manually skipped due to Alpine; you may add wget+jar if needed

EXPOSE 8080

CMD ["sleep", "infinity"]