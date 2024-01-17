<pre>
          .o8                .    .o88o.  o8o  oooo
         "888              .o8    888 `"  `"'  `888
     .oooo888   .ooooo.  .o888oo o888oo  oooo   888   .ooooo.   .oooo.o
    d88' `888  d88' `88b   888    888    `888   888  d88' `88b d88(  "8
    888   888  888   888   888    888     888   888  888ooo888 `"Y88b.
.o. 888   888  888   888   888 .  888     888   888  888    .o o.  )88b
Y8P `Y8bod88P" `Y8bod8P'   "888" o888o   o888o o888o `Y8bod8P' 8""888P'
</pre>

Repository for configuring my Linux based environments, I use those config mostly for WSL Ubuntu and Debian. This was supposed to be a simple project but a got carried away.

All though that's a very personal and subjective project feel free to Fork it or recommend configs and apps.

## Install

Run the following command in the machine you plan to install the configs.

```shell
git clone "https://github.com/Billocap/.dotfiles" ~/.dotfiles && bash ~/.dotfiles/install.sh
```

**!important**

> To perform the installation you will need `git` and `curl`. In case you don't have those apps use the command bellow to install them.
>
> ```shell
> sudo apt update && sudo apt upgrade -y && sudo apt install git curl -y
> ```

## Windows Terminal Config

As mentioned earlier I use this configs for my [Windows Subsystem for Linux (WSL)](https://learn.microsoft.com/en-us/windows/wsl/install) machines, so here's a brief explanation on how my Windows Terminal is configured.

- Download [Windows Terminal](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701?hl=pt-br&gl=br&icid=CNavAppsWindowsApps): You can find it on the Windows App Store.
- Install `Fira Code NF` on Windows, this font will allow Windows Terminal to used lots of cool icons.
- (Optional) Open your Windows Terminal's `settings.json` file and copy the contents of `.dotfiles/misc/windows-terminal/schemes.json` into the `schemes` key of your `settings.json` file, **Don't forget to remove the brackets when pasting the schemes**.
- (Optional) You can also copy the default profile from `.dotfiles/misc/windows-terminal/default.json`.

> Saddly the Windows configs are manual ¯\\\_(ツ)\_/¯.

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
  - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting): Highlight the command so you can spot any typos or verify if the command really exists.
  - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions): Auto completes commands.
  - [k](https://github.com/supercrabtree/k): Directory listing with git features.
- Node: I don't install node directly, here's a list of node related deps.
  - [Node Version Manager](https://github.com/nvm-sh/nvm): Super useful for dealing with node.
  - [Bun](https://bun.sh): Added as a bonus, just for testing.
- [Meilisearch](https://www.meilisearch.com): Used at my job as a search engine.
- [Wget](https://www.gnu.org/software/wget/): Necessary for running Vscode on WSL.
- [Man](https://linux.die.net/man/): More descriptive help pages for commands.
- [FFmpeg](https://ffmpeg.org): Useful for dealing with all kinds of files.
- [SSH](https://linux.die.net/man/1/ssh): For secure shell.
- [Git](https://git-scm.com): For version control.
- [Unzip](https://linux.die.net/man/1/unzip): Dealing with `zip` files.
- [FIGlet](http://www.figlet.org): ASCII art headers.
- [curl](https://curl.se): For requesting data.
- [NASM](https://www.nasm.us): For assembly programming.
