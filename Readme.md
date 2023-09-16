# dotfiles

Repositório onde eu salvo minhas configurações de usuário para o sistema operacional Linux.

## Configuração do Powershell

Caso esteja utilizando o `powershell` copie o conteúdo do arquivo `./themes/github-dark.json` dentro da chave `schemes` no seu arquivo de configurações do `powershell`. Também recomendo instalar e configurar a fonte `Fira Code NF` no terminal.

Após todos esses passos copie o conteúdo do arquivo `./profiles/default.json` para o seu arquivo de configurações do `powershell`.

## Configuração do VSCode

> Caso esteja usando WSL instale o `wget` para poder usar o VSCode.
>
> ```
> apt install wget
> ```

## Instalação Expressa

Para instalar o ambiante de forma estremamente simples e rápida.

Primeiro crie uma token do Github que possua acesso total aos `repos` e `write:plublic_key`.

Em seguida salve o token em um arquivo de `.env`.

```
GITHUB_TOKEN=<Seu Token>
```

Em seguida instale o `curl`.

```shell
sudo apt update && sudo apt upgrade -y && sudo apt install curl -y
```

E por último rode o comando.

```shell
source .env && curl -H "Authorization: token $GITHUB_TOKEN" -H "Accept: application/vnd.github.v3.raw" -O -L https://api.github.com/repos/Billocap/.dotfiles/contents/install
```

## Configuração do WSL ou VM

> Os passos a seguir foram realizados em `Ubuntu` e `Debian`.

Primeiro de um update no `apt`.

```shell
apt update && apt upgrade
```

Em seguida instale o `git` e o `ssh`.

```shell
apt install git ssh
```

Gere a chave `ssh`.

```shell
[ ! -d ~/.ssh ] && mkdir .ssh
ssh-keygen -t ed25519 -C "pikachurando@pm.me" -f ~/.ssh/github
```

Execute o `ssh-agent` em segundo plano e adicione a chave.

```shell
eval $(ssh-agent -s) && ssh-add ~/.ssh/github
```

> Não esqueça de adicionar a chave pública ao github.
>
> ```shell
> cat ./ssh/github.pub
> ```

Logo após clone este repositório.

```shell
git clone git@github.com:Billocap/.dotfiles.git ~/.dotfiles
```

E por fim crie um link simbólico para o `.gitconfig`.

```shell
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
```

### Instalação Automática

Para realizar a instalção automática execute o comando.

```shell
sh ~/.dotfiles/setup
```

### Configuração Avançada Manual

A maioria dos passos a seguir foram tirados do tutorial [Seu terminal pode ser muito, muito mais produtivo 💻](https://ivanaugustobd.medium.com/seu-terminal-pode-ser-muito-muito-mais-produtivo-3159c8ef77b2).

> Para seguir os passos adiante é necessario o `curl`. Caso não exista na máquina ele pode ser instalado com o comando.
>
> ```shell
> apt install curl
> ```

Primeiro instale o `zsh`.

```shell
apt install zsh
```

Agora instale o `oh-my-zsh`.

```shell
curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
```

Configure o `zsh` como shell padrão, caso ainda não tenha sido feito.

```shell
sudo usermod --shell $(which zsh) $USER
```

#### Cofigrurando o `zsh`

Primeiro vamos configurar o tema. Copie o tema para dentro da pasta raiz do `oh-my-zsh`.

```shell
ln -s ~/.dotfiles/themes/plain.zsh-theme ~/.oh-my-zsh/themes/plain.zsh-theme
```

Em seguida instale o plugin `zsh-syntax-highlighting`.

```shell
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
```

E o plugin `zsh-autosuggestions`.

```shell
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
```

Após isso crie um link simbólico para o `.zshrc`.

```shell
ln -s ~/.dotfiles/.zshrc ~/.zshrc
```
