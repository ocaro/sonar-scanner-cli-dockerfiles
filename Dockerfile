ARG=VERSION==4.0.0.1744
FROM openjdk:8-alpine
ENV VERSION

RUN wget --no-verbose https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-$VERSION.zip -O /tmp/sonar-scanner-cli.zip; unzip /tmp/sonar-scanner-cli.zip -d /opt/
RUN ln -s /opt/sonar-scanner-$VERSION /opt/sonar-scanner
ENV PATH=$PATH:/opt/sonar-scanner-$VERSION/bin
VOLUME ["/opt/sonar-scanner/conf"]
RUN mkdir /data
VOLUME ["/data"]
WORKDIR /data
ENTRYPOINT ["sonar-scanner"]
