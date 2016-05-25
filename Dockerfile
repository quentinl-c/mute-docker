FROM node:latest

WORKDIR /usr/src/app

RUN git clone --depth=1 --branch=netflux https://github.com/coast-team/mute-demo.git /usr/src/app/mute-demo && \
    cd /usr/src/app/mute-demo && \
	git submodule init && \
	git submodule update && \
    npm install && \
	cd assets/js/mute-client && npm install && \
	cd ../../../node_modules/mute-server/ && npm install
		
WORKDIR /usr/src/app/mute-demo

EXPOSE 8080
EXPOSE 8000

CMD ["node", "app.js"] 
