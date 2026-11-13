FROM ubuntu:22.04

RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g; s/security.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y gcc socat && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /home/ctf

COPY pwn .
COPY flag /home/ctf/flag

RUN chmod 444 /home/ctf/flag

EXPOSE 10001

ENTRYPOINT ["socat", "TCP-LISTEN:10001,reuseaddr,fork", "EXEC:/home/ctf/pwn,stderr"]