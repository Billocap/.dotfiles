# dotfiles

Repositório onde eu salvo minhas configurações de usuário para o sistema operacional Linux.

## Para WSL
Caso esteja usando WSL instale o `wget` para poder usar o VSCode.
```
apt-get install wget
```

## Configuração Inicial

Primeiro de um update no `apt-get`.
```shell
apt-get update
```
Em seguida instale o `git`.
```shell
apt-get install git
```
Logo após clone este repositório na pasta raiz ou na pasta `~`.
```shell
git clone https://github.com/Billocap/.dotfiles.git
```
E por fim crie um link simbólico para o `.gitconfig` na pasta raiz ou raiz ou na pasta `~`.
```shell
ln -s ./dotfiles/.gitconfig .gitconfig
```

## Configuração Avançada

A maioria dos passos a seguir foram tirados do tutorial [Seu terminal pode ser muito, muito mais produtivo 💻](https://ivanaugustobd.medium.com/seu-terminal-pode-ser-muito-muito-mais-produtivo-3159c8ef77b2).

Primeiro instale o `zsh`.
```
apt-get install zsh
```
