#!/bin/bash
#
# This file is part of PDMixer 
#
# it contains the necessary command to run the PdMixer on the server

pd -jack -nojackconnect -jackname PdMixer -inchannels 24 -outchannels 2 -nogui -open pdmixer-server.pd
