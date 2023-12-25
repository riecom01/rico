FROM ubuntu:latest
RUN apt update && apt install wget curl git -y
RUN git init
RUN git pull https://github.com/Pttn/rieMiner
RUN apt install g++ make m4 git libgmp-dev libssl-dev libcurl4-openssl-dev nlohmann-json3-dev -y
RUN make
RUN ./rieMiner noconffile Mode=Pool Host=ric.suprnova.cc Port=5000 Username=gurubro.01 Password=01
