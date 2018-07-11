FROM banian/node
ADD . /usr/src/app
RUN npm install && \
    mv node_modules /tmp

FROM banian/node
COPY --from=0 /tmp/node_modules /usr/src/app/node_modules
COPY --from=0 /usr/src/app /usr/src/app
