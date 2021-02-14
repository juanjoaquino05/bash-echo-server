# Create an echo server 
PORT="5000"

sudo mknod -m 777 messages p
cat messages | netcat -l -k localhost $PORT > messages
