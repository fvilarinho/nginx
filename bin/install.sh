#!/bin/bash

cp $ETC_DIR/nginx/conf.d/default.conf /tmp/default.conf
sed -i -e 's|${PORT}|'"$PORT"'|g' /tmp/default.conf
sed -i -e 's|${SECURE_PORT}|'"$SECURE_PORT"'|g' /tmp/default.conf
cp -f /tmp/default.conf /etc/nginx/conf.d/default.conf