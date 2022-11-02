#!/bin/sh
if [ ! -f UUID ]; then
  UUID="38145e99-7b16-4ad5-a2d5-ce0b0df336c3"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

