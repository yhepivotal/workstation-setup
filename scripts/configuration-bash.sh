echo
echo "Configuring bash with bash-it"
brew install grc
brew install coreutils
brew install watch
cp files/dircolors.ansi-dark ~/.dircolors
cp files/.inputrc ~/.inputrc
rm -rf ~/.bash_it
git clone https://github.com/Bash-it/bash-it.git ~/.bash_it
cp files/add_user_initials_to_git_prompt_info.bash ~/.bash_it/custom
cp files/bobby_pivotal/bobby_pivotal.theme.bash ~/.bash_it/themes/bobby/bobby.theme.bash
~/.bash_it/install.sh
source ~/.bash_profile
bash-it enable completion git
bash-it enable plugin ssh
bash-it enable plugin rbenv
bash-it enable completion ssh

brew install fasd
echo 'fasd_cache="$HOME/.fasd-init-bash"
if [ "$(command -v fasd)" -nt "$fasd_cache" -o ! -s "$fasd_cache" ]; then
    fasd --init posix-alias bash-hook bash-ccomp bash-ccomp-install >| "$fasd_cache"
  fi
  source "$fasd_cache"
  unset fasd_cache' >> ~/.bash_profile
