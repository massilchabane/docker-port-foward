FROM debian:stable-slim

VOLUME /root/.ssh

RUN apt-get update 
RUN apt-get install openssh-client -y

CMD ssh -4 -o "StrictHostKeyChecking no" -N -L $LOCAL_PORT:localhost:$REMOTE_PORT $SSH_USER@$SSH_HOST