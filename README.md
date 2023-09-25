# cluster

Projeto de um cluster com containers docker para a atividade acadêmica de Arquitetura de computadores II. São subidos 4 nós (1 master e 3 slaves) para executar um script que identifica números primos de 0 a x (sendo x especificável).

Para a comunicação entre os nós do cluster, foi utilizado o MPI através de uma conexão ssh via chaves RSA assinadas.

## Como rodar
- É necessário ter o docker instalado na máquina;
- Rodar `docker compose up --build -d` para subir os containers e configurá-los;
- Rodar `docker exec -it -u 0 master-node /bin/sh` para loggar no nó master.
- Rodar `sh run-cluster.sh` para rodar o script com os 4 nós ativos
- Alternativamente, rodar `sh run-master.sh` para o rodar o script apenas no nó master.
