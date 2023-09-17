<pre>
          .o8                .    .o88o.  o8o  oooo
         "888              .o8    888 `"  `"'  `888
     .oooo888   .ooooo.  .o888oo o888oo  oooo   888   .ooooo.   .oooo.o
    d88' `888  d88' `88b   888    888    `888   888  d88' `88b d88(  "8
    888   888  888   888   888    888     888   888  888ooo888 `"Y88b.
.o. 888   888  888   888   888 .  888     888   888  888    .o o.  )88b
Y8P `Y8bod88P" `Y8bod8P'   "888" o888o   o888o o888o `Y8bod8P' 8""888P'
</pre>

Repository for configuring my Linux based enviroments, I use those config mostly for WSL Ubuntu and Debian. This was supossed to be a simple project but a got carried away.

All though that's a very personal and subjective project feel free to Fork it or recomend configs and apps.

## Content

Here's a list of all the deps and apps I configured:

- [Vim](https://www.vim.org): I opted for Vim because I wanted to keep my text editor simple as I used Vscode for work.
    - [vim-plug](https://github.com/junegunn/vim-plug): Plugin Manager for Vim. Don't forget to run a `:PlugInstall` once you open Vim.
    - [NERDTree](https://github.com/preservim/nerdtree): For better navigation in the files folder.
        - [vim-nerdtree-syntax-highlight](https://github.com/tiagofumo/vim-nerdtree-syntax-highlight)
        - [nerdtree-git-plugin](https://github.com/xuyuanp/nerdtree-git-plugin)
    - [VimDevIcons](https://github.com/ryanoasis/vim-devicons): Adds some fancy icons to your files in the file explorer.
    - [fugitive.vim](https://github.com/tpope/vim-fugitive): Allows you to run `git` commands from Vim.
    - [vim-gitgutter](https://github.com/airblade/vim-gitgutter): Side bar the shows what modifications were made in the file.
- [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh): I use `zsh` as my main shell.
    - Plain Theme: Theme for zsh I wrote based on the default Linux theme.
    - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting): Highlight the command so you can spot any typos or verify if the command realy exists.
    - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions): Auto completes commands.
    - [k](https://github.com/supercrabtree/k): Diretory listing with git features.
- Node / JavaScript: I don't install node directly, but here's a list of my node related deps.
    - [Node Version Manager](https://github.com/nvm-sh/nvm): Super usefull for dealling with node.
    - [Bun](https://bun.sh): Added as a bonus, just for testing.
- [Meilisearch](https://www.meilisearch.com): Used at my job as a search engine.
- [Wget](https://www.gnu.org/software/wget/): Necessary for running Vscode on WSL.
- [Man](https://linux.die.net/man/): More descriptive help pages for commands.
- [FFmpeg](https://ffmpeg.org): Usefull for dealing with all kinds of files.
- [SSH](https://linux.die.net/man/1/ssh): For secure shell.
- [Git](https://git-scm.com): For version control.
- [Unzip](https://linux.die.net/man/1/unzip): Dealling with `zip` files.
- [FIGlet](http://www.figlet.org): ASCII art headers.
- [curl](https://curl.se): For requesting data.

## Windows Terminal Config

As mentioned earlier I use this configs for my [Windows Subsystem for Linux (WSL)](https://learn.microsoft.com/en-us/windows/wsl/install) machines, so here's a brief explanation on how my Windows Terminal is configured.

1. Download [Windows Terminal](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701?hl=pt-br&gl=br&icid=CNavAppsWindowsApps): You can find it on the Windows App Store.


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
source .env && curl -H "Authorization: token $GITHUB_TOKEN" -H "Accept: application/vnd.github.v3.raw" -O -L https://api.github.com/repos/Billocap/.dotfiles/contents/seed
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
