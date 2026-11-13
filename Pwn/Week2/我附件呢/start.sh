#!/bin/sh

echo $FLAG > /home/ctf/flag

chown root:ctf /home/ctf/flag
chmod 440 /home/ctf/flag

unset FLAG
export FLAG=no_flag_here

exec socat TCP-LISTEN:10001,reuseaddr,fork,su=ctf EXEC:./pwn,stderr
