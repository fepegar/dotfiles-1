install_brew() {
  renew_sudo
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null
  brew analytics off
  brew tap caskroom/versions  # homebrew-versions
}
 
