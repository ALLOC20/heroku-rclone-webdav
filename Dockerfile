FROM debian:10

ENV PORT=80

ADD start.sh /start.sh

RUN apt update && apt install -y  curl unzip \
&&  chmod +x /start.sh  \
&&  curl https://rclone.org/install.sh | bash

CMD exec /start.sh
