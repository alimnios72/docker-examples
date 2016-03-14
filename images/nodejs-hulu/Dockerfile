FROM node:4.3

MAINTAINER Jorge Zapata <jorge.zapata@jazg.net>
LABEL version="1.0"

#Installing node dependencies
RUN npm install -g bower 
RUN npm install -g karma
RUN npm install -g coffee-script
RUN npm install -g mocha
RUN npm install -g gulp
RUN echo '{ "allow_root": true }' > /root/.bowerrc

#Use https instead ssh so git can clone bower dependencies if ssh protocol is blocked
RUN git config --global url."https://".insteadOf git://

#Installing ruby to install SASS
RUN apt-get update && apt-get install -y ruby rubygems-integration
RUN gem install sass
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /var/www/public

CMD ["bash"]