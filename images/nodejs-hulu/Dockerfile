FROM node:4.3

MAINTAINER Jorge Zapata <jorge.zapata@jazg.net>
LABEL version="1.0"

ADD package.json /tmp/package.json
RUN cd /tmp && npm install 
RUN mkdir -p /opt/npm && cp -a /tmp/node_modules /opt/npm/
RUN echo '{ "allow_root": true }' > /root/.bowerrc

#Make local packages globally available
ENV PATH "$PATH:/opt/npm/node_modules/.bin"

#Use https instead ssh so git can clone bower dependencies if ssh protocol is blocked
RUN git config --global url."https://".insteadOf git://

#Installing ruby to install SASS
RUN apt-get update && apt-get install -y ruby rubygems-integration
RUN gem install sass
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /var/www

CMD ["bash"]