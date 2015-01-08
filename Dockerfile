FROM google/golang

ADD . /gopath/src/github.com/fiorix/freegeoip
WORKDIR /gopath/src/github.com/fiorix/freegeoip/cmd/freegeoip
RUN go get
RUN go install
RUN cp -r public /var/www

EXPOSE 8080
ENTRYPOINT ["/gopath/bin/freegeoip"]
#CMD ["-public", "/var/www"]
