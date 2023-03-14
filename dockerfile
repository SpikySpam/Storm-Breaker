FROM python:3.9.16-slim-bullseye

RUN apt-get update && apt-get install git curl -y && \
    git clone https://github.com/ultrasecurity/Storm-Breaker.git

WORKDIR /Storm-Breaker

ENV NGROK_API_KEY=$TF_VAR_NGROK_API_KEY
ENV USERNAME=$TF_VAR_DOCKER_STORMBREAKER_USER
ENV PASSWORD=$TF_VAR_DOCKER_STORMBREAKER_PASSWORD

RUN python3 -m pip install -r requirements.txt && \
    yes | bash install.sh

EXPOSE 80

COPY ./entrypoint.sh /Storm-Breaker/
ENTRYPOINT ["./entrypoint.sh"]
