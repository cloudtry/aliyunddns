FROM openjdk:8u232-jre

RUN mkdir /aliyunddns /aliyunddns/logs

WORKDIR /aliyunddns

COPY config/ ./config
ADD https://github.com/cloudtry/aliyunddns/releases/download/v1.0.0/aliyunddns-1.0.0.jar ./aliyunddns.jar

VOLUME /aliyunddns/config
VOLUME /aliyunddns/logs

ENTRYPOINT ["java", "-jar", "aliyunddns.jar"]