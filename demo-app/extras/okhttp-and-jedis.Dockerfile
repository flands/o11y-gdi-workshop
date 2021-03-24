FROM maven:3.6.3-jdk-8
COPY opentelemetry-java-tracing/okhttp-and-jedis/ /build
COPY ./runJava.sh /build
WORKDIR /build
RUN curl -sSL -o /opt/splunk-otel-javaagent.jar 'https://github.com/signalfx/splunk-otel-java/releases/download/v0.9.0/splunk-otel-javaagent-all.jar'
RUN mvn package
