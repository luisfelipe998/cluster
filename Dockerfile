FROM ubuntu:22.04

WORKDIR /app
COPY ./prime.py .
COPY ./scripts .
COPY ./sshd_config .
RUN chmod +x ./entrypoint.sh
RUN chmod +x ./run-master.sh
RUN chmod +x ./run-cluster.sh

RUN apt update && apt -y install mpich python3-mpi4py
RUN apt update && apt install -y openssh-server openssh-client sshpass

EXPOSE 22
ENTRYPOINT [ "./entrypoint.sh" ]