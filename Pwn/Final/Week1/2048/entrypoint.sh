#!/bin/sh

echo $FLAG > flag

chmod 644 flag

exec socat TCP-LISTEN:10001,reuseaddr,fork EXEC:./pwn,stderr