FROM tensorflow/tensorflow:latest
COPY sources.list /etc/apt/sources.list
RUN apt-get update && apt-get install -y libprotobuf-dev protobuf-compiler \
&& apt-get clean && \
rm -rf /var/lib/apt/lists/*