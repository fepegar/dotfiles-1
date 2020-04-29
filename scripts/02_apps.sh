install_brew_apps() {
  # Apps
  brew install cmake
  brew install ffmpeg
  brew install googler
  brew install htop  # an interactive process viewer for Unix
  brew install imagemagick
  brew install imgcat
  brew install vim
  brew install wget
}

install_cask_apps() {
  renew_sudo # to make the Caskroom on first install

  brew cask install anaconda
  brew cask install atom
  brew cask install dropbox
  brew cask install evernote
  brew cask install firefox
  brew cask install gimp
  brew cask install google-chrome
  brew cask install iterm2
  brew cask install itk-snap
  brew cask install keka
  brew cask install meld
  brew cask install musixmatch
  brew cask install openoffice
  brew cask install processing
  brew cask install pycharm-ce
  brew cask install skype
  brew cask install slack
  brew cask install slicer-nightly
  brew cask install spectacle
  brew cask install spotify
  brew cask install sublime-text
  brew cask install telegram
  brew cask install virtualbox
  brew cask install visual-studio-code
  brew cask install vlc
  brew cask install zotero

  # prefpanes, qlplugins, colorpickers
  brew cask install betterzipql
  brew cask install qlmarkdown
  brew cask install qlcolorcode
  brew cask install qlimagesize
  brew cask install qlstephen
  brew cask install quicklook-json
}

install_tinyscripts() {
  brew tap vitorgalvao/tinyscripts
  brew install cask-repair
}

install_mas_apps() {
  readonly local mas_apps=('1password=443987910' 'affinity-designer=824171161' 'affinity-photo=824183456' 'colorsnapper2=969418666' 'dropshelf=540404405' 'haskell=841285201' 'ia-writer=775737590' 'quiver=866773894' 'reeder=880001334' 'spark=1176895641' 'tweetbot=557168941' 'xcode=497799835')

  mas signin "${mas_email}" "${mas_password}"

  for app in "${mas_apps[@]}"; do
    local app_id="${app#*=}"
    mas install "${app_id}"
  done
}
