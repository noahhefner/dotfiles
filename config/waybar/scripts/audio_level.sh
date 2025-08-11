#!/bin/bash

# Get the default sink ID
sink_id=$(wpctl status | grep 'Default sink' | awk '{print $3}')

# Get the volume level for the default sink
volume=$(wpctl status | grep "$sink_id" | grep 'Volume:' | awk '{print $2}' | sed 's/%//')

# Get the mute status
mute_status=$(wpctl status | grep "$sink_id" | grep 'Mute:' | awk '{print $2}')

# Format the volume level
if [[ "$mute_status" == "yes" ]]; then
    echo '{"text":"Muted","class":"muted"}'
else
    echo '{"text":"Volume: '"$volume"'%","class":"normal"}'
fi
