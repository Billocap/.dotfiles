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

> Para seguir os passos adiante é necessario o `curl`. Caso não exista na máquina ele pode ser instalado com o comando.
> ```shell
> apt-get install curl
> ```

Primeiro instale o `zsh`.
```shell
apt-get install zsh
```
Agora instale o `oh-my-zsh`.
```shell
curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh; zsh
```
Configure o `zsh` como shell padrão, caso ainda não tenha sido feito.
```shell
sudo usermod --shell $(which zsh) $USER
```

### Cofigrurando o `zsh`
Primeiro vamos configurar o tema. Crie uma link simbólico para o tema.
```shell
ln -s ./.dotfiles/plain.zsh-theme ./.oh-my-zsh/themes/plain.zsh-theme
```
Agora crie um link simbólico para o `.zshrc` na pasta raiz ou raiz ou na pasta `~`.
```shell
ln -s ./.dotfiles/.zshrc .zshrc
```