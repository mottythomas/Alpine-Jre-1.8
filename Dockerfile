## Install glibc as per below
##https://wiki.alpinelinux.org/wiki/Installing_Oracle_Java
FROM alpine
RUN apk add tzdata
ENV TZ=Asia/Dubai

RUN addgroup -S bayauser && adduser -S bayauser -G bayauser
RUN mkdir -p /usr/local/java/jre1.8.0_144
ADD jre1.8.0_144 /usr/local/java/jre1.8.0_144
RUN ln -s /usr/local/java/jre1.8.0_144/bin/java /bin/java

ENV JAVA_HOME=/usr/local/java/jre1.8.0_144/
