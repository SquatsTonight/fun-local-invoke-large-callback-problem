FROM node:12.16.1

COPY commons/function-compute-mock.sh /var/fc/runtime/nodejs12/mock
COPY commons/nodejs-agent.sh /var/fc/runtime/nodejs12/agent.sh
COPY commons/baseCont /app/baseCont

COPY commons/server/nodejs4.4 /app/server/nodejs4.4
RUN apt-get update && apt-get install vim-gtk -y
RUN cd /app/server/nodejs4.4 && npm install

ENTRYPOINT ["/var/fc/runtime/nodejs12/mock"]
