FROM cnphpbb/debian-cn:2.2.1

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
      apt-get install -y moosefs-master moosefs-cgi moosefs-cgiserv; \
      \
      apt-get clean; \
      \
      rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


# Add and run start script
ADD start.sh /opt/start.sh
RUN chown root:root /opt/start.sh; \
    \
    chmod 700 /opt/start.sh; \
    \
    ln -s /usr/bin/python3 /usr/bin/python

# Expose ports
EXPOSE 9419 9420 9421 9422 9425

CMD ["/opt/start.sh", "-d"]