#!/bin/sh

wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O ~/.git-completion.bash
chmod a+x ~/.git-completion.bash
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -O ~/.git-prompt.sh
chmod a+x ~/.git-prompt.sh

echo '
######### my-settings ########
# Settings that apply only to this environment that should be applied before loading my-settings.
source ~/.git-completion.bash # Need. The path should be changed depending on the environment.
source ~/.git-prompt.sh # Need. The path should be changed depending on the environment.

# Apply my-settings. my_settings_path should be changed to suit your environment
my_settings_path="$HOME/my-settings" # change
source "${my_settings_path}/base"

# Settings that apply only to this environment that should be applied after loading my-settings.
cd ~
' >> ~/.bashrc
