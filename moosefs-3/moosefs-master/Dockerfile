FROM debian:latest

ADD sources.list /etc/apt/sources.list

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
      apt-get install -y moosefs-master moosefs-cgi moosefs-cgiserv


# Add and run start script
ADD start.sh /opt/start.sh
RUN chown root:root /opt/start.sh; \
    \
    chmod 700 /opt/start.sh; \
    \
    ln -s /usr/bin/python3 /usr/bin/python

# Expose ports
EXPOSE 9420 9421 9422 9423 9424 9425

CMD ["/opt/start.sh", "-d"]