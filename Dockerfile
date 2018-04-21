FROM alpine:3.7

RUN apk add --no-cache --update \
      openssh-server openssh-keygen

ADD entrypoint.sh /entrypoint.sh

EXPOSE 22

ENTRYPOINT [ "/entrypoint.sh" ]

CMD [ "/usr/sbin/sshd", "-D" ]