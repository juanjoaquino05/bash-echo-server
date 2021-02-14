# Getting the HTML of Page 

# Getting page
exec 3<>/dev/tcp/www.wikipedia.org/80
echo -e "GET / HTTP/1.1\n\n" >&3
cat <&3

# Closing Connections 
exec 3<&-
exec 3>&-