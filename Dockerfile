FROM alpine:latest

RUN apk add --update bash python py-setuptools ca-certificates build-base python-dev sqlite-dev

WORKDIR /root/gglsbl
ADD . .

RUN python setup.py install
ENTRYPOINT ["gglsbl_client.py"]
CMD ["--help"]
