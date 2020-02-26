FROM bashkirtsevich/jamspell:latest

RUN apt-get update
RUN apt-get -y install cmake protobuf-compiler

RUN git clone https://github.com/bakwc/JamSpell.git

WORKDIR JamSpell
RUN mkdir build
WORKDIR build
RUN cmake ..
RUN make

COPY alphabet_et.txt /JamSpell/build/alphabet_et.txt
COPY postimees.txt /JamSpell/build/postimees.txt