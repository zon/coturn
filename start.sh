#!/bin/bash

set -e

echo "Starting Coturn"

turnserver -v \
	--user "${TURN_USERNAME}:${TURN_PASSWORD}" \
	-p ${TURN_PORT} \
	--min-port ${TURN_PORT_START} \
	--max-port ${TURN_PORT_END}
