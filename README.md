# PdMixer

A 12 stereo channel, TCP server-based mixer. The audio stuff is shamelessly adapted from Netty McNetface's receivers. 

The code is located in github: [https://github.com/fdch/pdmixer](https://github.com/fdch/pdmixer)

[pdmixer.pd](pdmixer.pd) is the client patch (aka, the 'gui'), and the audio stuff is on the sever patch: [lib/pdmixer-server.pd](lib/pdmixer-server.pd)

# Server Setup

1. The server must have a copy of [lib/pdmixer-server.pd](lib/pdmixer-server.pd) running. You can use the `pdmixer.sh` script located in [lib/pdmixer.sh](lib/pdmixer.sh), or run `pd` like this:

```bash
pd -jack -nojackconnect -jackname PdMixer -inchannels 24 -outchannels 2 -nogui -open ./lib/pdmixer-server.pd
```

2. The server must also route JACK channels accordingly.  
3. Network configuration is done on the [lib/pdmixer-network.txt](lib/pdmixer-network.txt) file:  
```
localhost 38400
```
Ideally, you would replace `localhost` with your server's hostname and the foo port with an open port. 

# Usage

Once your server is set up, you can open the client patch ([pdmixer.pd](pdmixer.pd)) and edit the mix.

NOTE: this mixer uses no audio so you can safely turn OFF your DSP.

1. Turn ON "Connect" to communicate with the server.
2. Edit the mix on the gui. 
3. Use the "Save" or "Load" buttons to save or load a preset file on your local system for later use. The "Reset" button reverts all your changes on the gui.
4. Turn OFF "Connect" to end communication with the server and Quit Pd.

# Author

Fede Camara Halac - https://fdch.github.io

