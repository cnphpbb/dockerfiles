FROM cnphpbb/debian-cn:latest

ENV container docker
ENV LC_ALL C
ARG DEBIAN_FRONTEND=noninteractive

# Install softs
RUN apt-get update; \
      apt-get install -y lsb-release curl gnupg2; \
      \
      curl -fsSL https://ppa.moosefs.com/moosefs.key | apt-key add -; \
      \
      echo "deb http://ppa.moosefs.com/moosefs-3/apt/debian/$(lsb_release -cs) $(lsb_release -cs) main" > /etc/apt/sources.list.d/moosefs.list; \
      \
      apt-get update ; \
      \
      apt-get install -y moosefs-chunkserver; \
      \
      apt-get clean; \
      \
      rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


# Add and run start script
ADD start-chunkserver.sh /opt/start-chunkserver.sh
RUN chown root:root /opt/start-chunkserver.sh; \
    \
    chmod 700 /opt/start-chunkserver.sh

# Expose ports
EXPOSE 9419 9420 9422

CMD ["/opt/start-chunkserver.sh", "-d"]