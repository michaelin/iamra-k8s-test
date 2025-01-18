FROM golang:1.23.5
WORKDIR /usr/local/bin
RUN curl -O https://rolesanywhere.amazonaws.com/releases/1.4.0/Aarch64/Linux/aws_signing_helper
RUN chmod a+x aws_signing_helper
USER 1000
ENTRYPOINT [ "aws_signing_helper" ]
CMD [ "--help" ]