FROM adoptopenjdk/openjdk11:jdk-11.0.4_11-alpine-slim

ENV APP_TARGET target
ENV APP helm-demo-0.0.1-SNAPSHOT.jar

RUN mkdir -p /opt
COPY ${APP_TARGET}/${APP} /opt

ENTRYPOINT exec java ${JAVA_AGENT} ${JAVA_OPTS} ${MEM_PARAMS} -jar /opt/${APP}
