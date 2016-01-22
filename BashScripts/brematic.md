Sends an UDP package to the brematic gateway to switch a wireless socket on or off

### Arguments

brematic.sh &lt;GATEWAY_IP&gt; &lt;GATEWAY_PORT&gt;&lt;MASTER_ID&gt;&lt;SLAVE_ID&gt; &lt;ON|OFF&gt;

* GATEWAY_IP: The IP address of the brematic gateway
* GATEWAY_PORT: The port of the brematic gateway (usually 49880)
* MASTER_ID: The master id set on the socket (e.g. 10000 for A, 01000 for B, etc.)
* SLAVE_ID: The slave id set on the socket (e.g. 10000 for 1, 01000 for 2, etc.)
* ON|OFF: ON to turn on the socket, OFF to.. well I guess you know...
