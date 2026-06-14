FROM ubuntu:latest

# install cowsay, and move the "default.cow" out of the way so we can overwrite it with "whale.cow"
RUN apt-get update && apt-get install -y cowsay --no-install-recommends && rm -rf /var/lib/apt/lists/* \
	&& mv /usr/share/cowsay/cows/default.cow /usr/share/cowsay/cows/orig-default.cow

# "cowsay" installs to /usr/games
ENV PATH $PATH:/usr/games:/usr/share/games

COPY whale.cow /usr/share/cowsay/cows/
RUN ln -sv /usr/share/cowsay/cows/whale.cow /usr/share/cowsay/cows/default.cow

ENTRYPOINT ["cowsay"]
CMD ["Containerise your applications with Docker!"]
