# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

# Path to your oh-my-bash installation.
# Change the "<user>" thing to your actual username.
# For example, "user" or "pc"
export OSH='/home/<user>/.oh-my-bash'

OSH_THEME="ht"

OMB_USE_SUDO=true

completions=(
  git
  composer
  ssh
)

aliases=(
  general
)

plugins=(
  git
  bashmarks
)

source "$OSH"/oh-my-bash.sh

update_system() {
 # You should change this if you're using a Debian based distro.
 sudo pacman -Syu && yay -Syu
}
