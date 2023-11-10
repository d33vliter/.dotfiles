## NEOVIM

### Instalar esto:

Esto como root:
```
curl -sL install-node.vercel.app/lts | bash
````

Esto normal:
```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
````

Luego de instalarse el plugin COC, ejecutar :CocInstall coc-sh coc-snippets
