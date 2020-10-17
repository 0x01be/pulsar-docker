FROM 0x01be/maven

RUN apk add --no-cache --virtual pulsar-build-dependencies \
    git

ENV PULSAR_REVISION master
RUN git clone --depth 1 --branch ${PULSAR_REVISION} https://github.com/apache/pulsar.git /pulsar

WORKDIR /pulsar

RUN mvn nstall -DskipTests

