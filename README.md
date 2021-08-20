# my-settings
settings for .bashrc etc

## Requirements
#### git-completion.sh
1. `wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O ~/.git-completion.bash`
1. `chmod a+x ~/.git-completion.bash`

## Usage
Add the following to the end of your .bashrc
```.bashrc
# Settings that apply only to this environment that should be applied before loading my-settings.
source ~/.git-completion.bash # Need. The path should be changed depending on the environment.

# Apply my-settings. my_settings_path should be changed to suit your environment
my_settings_path="/home/kathmandu/my-settings" # change
source "${my_settings_path}/base"

# Settings that apply only to this environment that should be applied after loading my-settings.
cd ~ # e.g.
```