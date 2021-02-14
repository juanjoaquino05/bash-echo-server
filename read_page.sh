# Getting the HTML of Page 
PAGE="www.wikipedia.org"
PORT=80

# Getting page
exec 3<>/dev/tcp/$PAGE/$PORT
echo -e "GET / HTTP/1.1\n\n" >&3
cat <&3

# Closing Connections 
exec 3<&-
exec 3>&-