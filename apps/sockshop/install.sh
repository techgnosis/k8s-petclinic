#! /usr/bin/env bash

set -euo pipefail

kapp deploy -a sockshop -f <(ytt --data-values-env=YTT_SOCKSHOP \
-f sockshop.yml \
-f carts.yml \
-f front-end.yml \
-f orders.yml \
-f queue-master.yml \
-f shipping.yml \
-f namespace.yml \
-f certificate.yml \
-f gateway.yml \
-f virtual-service.yml \
-f values.yml)