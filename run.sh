# ************************************************************
#
# This step will start mongodb
#
#   Variables used:
#
#   Outputs:
#     $FLOW_DATABASE_REDIS_VERSION
#     $FLOW_DATABASE_REDIS_IP
#     $FLOW_DATABASE_REDIS_PORT
#
# ************************************************************

flow_cmd "sudo /etc/init.d/redis-server start" --echo
FLOW_DATABASE_REDIS_VERSION="$(redis-server --version 2>&1)"
FLOW_DATABASE_REDIS_IP="127.0.0.1"
FLOW_DATABASE_REDIS_PORT="6379"
