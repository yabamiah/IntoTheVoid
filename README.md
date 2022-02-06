<div align="center">
    <a href="#">
        <img width="370px" alt="void-logo"
     src="img/void-aks-start-white.svg">
     </a>
 </div>

<br />
<br />

[![Made with - Neovim](https://img.shields.io/badge/Made_with-Neovim-5E9074?style=for-the-badge&logo=Neovim&logoColor=white)](https://neovim.io/) 
[![os - Void Linux](https://img.shields.io/badge/os-Void_Linux-5E9074?style=for-the-badge)](https://voidlinux.org/) 
[![License - MIT](https://img.shields.io/badge/License-MIT-5E9074?style=for-the-badge)](https://)
[![status - experimental](https://img.shields.io/badge/status-experimental-ff686b?style=for-the-badge)](https://)

Então você finalmente caiu no **vazio**, e se deparou com esse sistema minimalista e diferente, e está tentando configura-lo, certo? Se entregue ao vazio e desfrute.

# Sobre
Esse script tem a intenção de ajudar novos usuários do Void Linux e ensinar sobre a instalação e configuração do gerenciador de janelas BSPWM no Void Linux, sendo esta uma instalação miníma.
> ⚠ **Não esqueça de editar o arquivo .sh para descomentar a instalação do seu driver!**

        // Colocar imagens aqui depois //

|                |                                                          |
|----------------|----------------------------------------------------------|
| **Shell:**     | bash                                                     |
| **WM:**        | bspwm                                                    |
| **Editor:**    | vim                                                      |
| **Terminal:**  | urxvt                                                    |
| **Launcher:**  | dmenu                                                    |
| **Browser:**   | firefox                                                  |

# Começo rápido
1. Adquira o Void Linux
    https://alpha.de.repo.voidlinux.org/live/current/void-live-x86_64-20210930.iso
2. Instale esse cript
    Em seu terminal, rode o comando:
    ```sh
        $ git clone https://github.com/yabamiah/enter-the-void.git 
        $ vim install.sh # configure isto para o seu driver de vídeo
        $ chmod 755 install.sh
3. Renicie e estará pronto para ciar no vazio!
    > Não esqueça de dar atenção na documentação do Void para ter uma melhor compreensão.

## Por quê Void Linux?
+ Extramamente pequeno
Void Linux é um sistema mantido limpo e extramente pequeno, com poucos softwares incluídos. 

+ Rápido
O gerenciamente de inicialização é o Runit ao invés do Systemd, o que é torna o sistema mais compacto e poderoso, pois o Runit é uma solução muito simples e de fácil manutenção, seguindo totalmente o princípio KISS.
+ XBPS (X Binary Package System)
O XBPS é outro componente rápido do sistema, um gerenciador de pacotes grande o bastante para fazer tudo o que você precisa, além disso é muito rápido, fácil de usar e livre de bugs. Também permite que você faça seus próprios de maneira rápida com o xbps-src.

# Referências
* [Void Linux](https://voidlinux.org/) 
* [XBPS](https://github.com/void-linux/xbps)
* [void-packages](https://github.com/void-linux/void-packages)
* [r/Void Linux](https://www.reddit.com/r/voidlinux/)
* [Documentação](https://docs.voidlinux.org/)

# Inspiração
[❄️ Henrik Lissner ❄️](https://github.com/hlissner/dotfiles)