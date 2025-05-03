#!/bin/bash


options=("icanhazip.com" "http://checkip.amazonaws.com" "http://ipecho.net/plain" "l2.io/ip" "ifconfig.me/ip")


select options in "${options[@]}"; do
    echo "you chose: ${options}"
    break
done

case "$options" in
    "icanhazip.com")
        curl icanhazip.com
        ;;
    "http://checkip.amazonaws.com")
        curl http://checkip.amazonaws.com
        ;;
    "http://ipecho.net/plain")
        curl http://ipecho.net/plain
        ;;
    "l2.io/ip")
        curl l2.io/ip
        ;;
    "ifconfig.me/ip")
        curl ifconfig.me/ip
        ;;
    *)
        echo "Invalid option"
        ;;
esac
