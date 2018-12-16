FROM debian

WORKDIR /app
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y build-essential time
COPY * /app/
RUN make install
CMD ["make"]
