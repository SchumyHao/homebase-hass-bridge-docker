#!/bin/bash

type rhass >/dev/null 2>&1
ret=$?

if [ $ret -ne 0 ]
then
  npm install -g homebase-hass-bridge
else
  npm update -g homebase-hass-bridge
fi

rhass

