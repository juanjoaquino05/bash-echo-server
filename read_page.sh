# Getting the HTML of Page 
PAGE=$1
PORT=80

if [ $# -eq 0 ]
then
    echo "No arguments supplied"
fi

if [ $# -gt 0 ]
then

    # Getting page
    exec 3<>/dev/tcp/$PAGE/$PORT
    echo -e "GET / HTTP/1.1\n\n" >&3
    cat <&3

    # Closing Connections 
    exec 3<&-
    exec 3>&-
fi
