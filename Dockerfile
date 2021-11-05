ARG VERSION=3.13
FROM alpine:$VERSION
ARG VERSION
ENV MSG "Hello Wolrd !!"
RUN apk update && apk upgrade
WORKDIR /opt 
RUN echo "$MSG" > /opt/messages.txt
CMD ["cat","/opt/messages.txt"]