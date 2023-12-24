FROM ubuntu:latest
RUN apt update && apt install wget curl git -y
RUN git init
RUN git pull https://github.com/Pttn/rieMiner
RUN apt install g++ make m4 git libgmp-dev libssl-dev libcurl4-openssl-dev nlohmann-json3-dev -y
RUN make
RUN ./rieMiner noconffile Mode=Pool Host=Stelo.xyz PORT=2005 Username=ric1qu9sqhnl7vwgn3dhtygwk9fyqn2a9erfwjjsp55
