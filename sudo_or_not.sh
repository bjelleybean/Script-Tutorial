#!/usr/bin/env bash

#sudo -v 1>/dev/null 2>/dev/null && echo "user $(id -un) has SUDO priveleges on $(hostname)" || echo "user $(id -un) does NOT have SUDO priveleges on $(hostname)"

if sudo -v 1>/dev/null 2>/dev/null
then
  echo "user $(id -un) has SUDO priveleges on $(hostname)"
else
  echo "user $(id -un) does NOT have SUDO priveleges on $(hostname)"
fi
