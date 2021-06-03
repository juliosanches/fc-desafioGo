# Desafio Go FullCycle, imagem mínima.
## Criar uma imagem Docker com Go de um helloword "FullCycle Rocks!" onde essa imagem tenha menos de 2MB

### Anotações dos teste:

```
#Primeira imagem, rápida e simples só usando a imagem do GO
#Dockerfile

docker build -t juliosanches/desafio-go .
docker run --rm --name desafio-go juliosanches/desafio-go
docker images
#REPOSITORY                     TAG       IMAGE ID       CREATED         SIZE
#juliosanches/desafio-go        latest    16e88248e0ba   4 minutes ago   862MB

#Segundo teste usando a imagem GO com Alpine
#Dockerfile.prod criado

docker build -t juliosanches/desafio-go:prod . -f Dockerfile.prod
#Não foi...:
#REPOSITORY                     TAG       IMAGE ID       CREATED          SIZE
#juliosanches/desafio-go        prod      89980f43665b   10 seconds ago   301MB

#Terceiro teste, procurando no Google...
#Dockerfile.prod2 criado seguindo instruções de:
* https://chemidy.medium.com/create-the-smallest-and-secured-golang-docker-image-based-on-scratch-4752223b7324
* https://bitfieldconsulting.com/golang/docker-image

docker build -t juliosanches/desafio-go:prod2 . -f Dockerfile.prod2
#Ao executar "docker run --rm --name desafio-go juliosanches/desafio-go:prod2" não funcionava,
#depois de alguns ajustes(aprendendo) GO: pakage main... go.mod...
#FOI!!!
#REPOSITORY                     TAG       IMAGE ID       CREATED          SIZE
#juliosanches/desafio-go        prod2     a51c5928e0d1   53 seconds ago   1.95MB

#Mudando os parâmetros de compilação fica um pouco menor.
#REPOSITORY                     TAG       IMAGE ID       CREATED          SIZE
#juliosanches/desafio-go        prod2     9bc8c7564c40   15 seconds ago   1.36MB

```
####
DockerHub: https://hub.docker.com/repository/docker/juliosanches/desafio-go
