# instant-ssh-tunnel-mac
Create an ssh tunnel on mac and automatically connect / disconnect with 1-click to local socks proxy.

### Installation

Add file "instant_ssh_tunnel.command" to a comfortable place and then place it on dock in order to 1-click start ssh tunnel.

### Fine-tuning
Be sure to have ssh keys for your user installed in order to have the ability to use this script with 1-click.

### Configuration 
You have to manually configure variable "myInterface" with the interface you wish to connect to the tunnel.
To pick an interface run:  
```networksetup -listnetworkserviceorder```

Then edit host and add your server's credentials.

### Security Recommendations
I'd advise to use ssh-keys for better security and be sure to use a non-administrative user with the only purpose of ssh tunneling.

Check [this](https://askubuntu.com/a/50000) post for more information.
