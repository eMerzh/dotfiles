# /etc/zsh/zshenv ou ~/.zshenv
# Fichier de configuration de zsh, lu au lancement de tout shell Zsh
# Formation Debian GNU/Linux par Alexis de Lattre
# http://formation-debian.via.ecp.fr/

# Le PATH = répertoires dans lequels le shell va chercher les commandes
# ATTENTION : le répertoire courant ne fait pas partie du PATH
export PATH="~/bin:/usr/local/bin:/usr/local/sbin:/sbin:/bin:/usr/bin:/usr/sbin:/usr/X11/bin:/Users/dnw/.rvm/bin"

# Viewer/Editeur par defaut (pour Crontab, CVS,...)
export VISUAL=vim
export EDITOR=vim
export PAGER=less

# Permissions rw-r--r-- pour les fichiers crées
# et rwxr-xr-x pour les répertoires crées
umask 022

# Proxy HTTP / FTP sans mot de passe
export http_proxy="http://193.190.234.40:3128"
export ftp_proxy="http://193.190.234.40:3128"

# Proxy HTTP / FTP avec mot de passe
#export http_proxy="http://login:password@proxy.exemple.org:8080"
#export ftp_proxy="ftp://login:password@proxy.exemple.org:8080"

# Ne pas passer par le proxy pour les domaines locaux
#export no_proxy="exemple.org"

# De la couleur pour grep
export GREP_OPTIONS='--color=auto'

export LESS_TERMCAP_mb=$'\E[01;31m'    # début de blink
export LESS_TERMCAP_md=$'\E[01;31m'    # début de gras
export LESS_TERMCAP_me=$'\E[0m'        # fin
export LESS_TERMCAP_so=$'\E[01;44;33m' # début de la ligne d`état
export LESS_TERMCAP_se=$'\E[0m'        # fin
export LESS_TERMCAP_us=$'\E[01;32m'    # début de souligné
export LESS_TERMCAP_ue=$'\E[0m'        # fin
