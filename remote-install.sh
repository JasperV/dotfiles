# check for updates
sudo softwareupdate -i -a

# install git by means of xcode command line tools
xcode-select --install

# clone bare into .files folder
git clone --bare https://github.com/JasperV/dotfiles.git $HOME/.files

# set alias in current shell scope
alias dotfiles='/usr/bin/git --git-dir=$HOME/.files/ --work-tree=$HOME'

# checkout the actual content from repo to $HOME
dotfiles checkout

# set flag to ignore untracked files
dotfiles config --local status.showUntrackedFiles no

# source all that is required
source $HOME/.bashrc