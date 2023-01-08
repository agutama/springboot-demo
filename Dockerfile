# Set base image using temurin
FROM eclipse-temurin:11-jre-focal

ENV JAR_FILE target/demo-*.jar
ENV JAR_HOME /opt/jar

COPY $JAR_FILE $JAR_HOME/
WORKDIR $JAR_HOME

# Set Java Heap
ENV JAVA_OPTS="-Xms512M -Xmx512M"

ENTRYPOINT java $JAVA_OPTS -jar demo-*.jar