FROM kalilinux/kali-rolling:latest

ENV HOSTNAME="kali" \
    PS1="[\u@\h \W]# "

RUN apt update && \
    apt upgrade -y && \
    apt install -y locate && \
    updatedb

CMD ["bash"]