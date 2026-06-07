FROM docker/whalesay:latest
RUN apt-get -y -qq update && apt-get install -qq -y fortunes lolcat
CMD /usr/games/fortune debian-hints | cowsay | lolcat -a
