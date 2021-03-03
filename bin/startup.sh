#!/bin/bash

SECURE_PORT=`echo $SETTINGS | jq -r .securePort.value`

export SECURE_PORT

$BIN_DIR/child-install.sh

nginx