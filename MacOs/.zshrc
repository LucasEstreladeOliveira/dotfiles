# *Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.*

# *Initialization code that may require console input (password prompts, [y/n]*

# *confirmations, etc.) must go above this block; everything else may go below.*

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then

source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"

fi

# *Basic auto/tab complete:*

autoload -U compinit

zstyle ':completion:*' menu select

zmodload zsh/complist

compinit

_comp_options+=(globdots)   # *Include hidden files.*

# *If you come from bash you might have to change your $PATH.*

ZSH_DISABLE_COMPFIX=true

# *Path to your oh-my-zsh installation.*


export ZSH="/Users/lucasestrela/.oh-my-zsh"

# *Set name of the theme to load --- if set to "random", it will*

# *load a random theme each time oh-my-zsh is loaded, in which case,*

# *to know which specific one was loaded, run: echo $RANDOM_THEME*

# *See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes*

ZSH_THEME="powerlevel10k/powerlevel10k"

POWERLEVEL9K_MODE="nerdfont-complete"

# *Set list of themes to pick from when loading at random*

# *Setting this variable when ZSH_THEME=random will cause zsh to load*

# *a theme from this variable instead of looking in $ZSH/themes/*

# *If set to an empty array, this variable will have no effect.*

# *ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )*

# *Use lf to switch directories and bind it to ctrl-o*

lfcd () {

tmp="$(mktemp)"

lf -last-dir-path="$tmp" "$@"

if [ -f "$tmp" ]; then

dir="$(cat "$tmp")"

rm -f "$tmp"

[ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"

fi

}

bindkey -s '^o' 'lfcd\n'

bindkey -s '^g' 'lazygit\n'

# *Uncomment the following line to use case-sensitive completion.*

# *CASE_SENSITIVE="true"*

# *Uncomment the following line to use hyphen-insensitive completion.*

# *Case-sensitive completion must be off. _ and - will be interchangeable.*

# *HYPHEN_INSENSITIVE="true"*

# *Uncomment the following line to disable bi-weekly auto-update checks.*

# *DISABLE_AUTO_UPDATE="true"*

# *Uncomment the following line to automatically update without prompting.*

# *DISABLE_UPDATE_PROMPT="true"*

# *Uncomment the following line to change how often to auto-update (in days).*

# *export UPDATE_ZSH_DAYS=13*

# *Uncomment the following line if pasting URLs and other text is messed up.*

# *DISABLE_MAGIC_FUNCTIONS=true*

# *Uncomment the following line to disable colors in ls.*

# *DISABLE_LS_COLORS="true"*

# *Uncomment the following line to disable auto-setting terminal title.*

# *DISABLE_AUTO_TITLE="true"*

# *Uncomment the following line to enable command auto-correction.*

ENABLE_CORRECTION="true"

# *Uncomment the following line to display red dots whilst waiting for completion.*

# *COMPLETION_WAITING_DOTS="true"*

# *Uncomment the following line if you want to disable marking untracked files*

# *under VCS as dirty. This makes repository status check for large repositories*

# *much, much faster.*

# *DISABLE_UNTRACKED_FILES_DIRTY="true"*

# *Uncomment the following line if you want to change the command execution time*

# *stamp shown in the history command output.*

# *You can set one of the optional three formats:*

# *"mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"*

# *or set a custom format using the strftime function format specifications,*

# *see 'man strftime' for details.*

# *HIST_STAMPS="mm/dd/yyyy"*

# *Would you like to use another custom folder than $ZSH/custom?*

# *ZSH_CUSTOM=/path/to/new-custom-folder*

# *Which plugins would you like to load?*

# *Standard plugins can be found in $ZSH/plugins/*

# *Custom plugins may be added to $ZSH_CUSTOM/plugins/*

# *Example format: plugins=(rails git textmate ruby lighthouse)*

# *Add wisely, as too many plugins slow down shell startup.*

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# *User configuration*

# *export MANPATH="/usr/local/man:$MANPATH"*

# *You may need to manually set your language environment*

# *export LANG=en_US.UTF-8*

# *Preferred editor for local and remote sessions*

# *if [[ -n $SSH_CONNECTION ]]; then*

#   *export EDITOR='vim'*

# *else*

#   *export EDITOR='mvim'*

# *fi*

# *Compilation flags*

# *export ARCHFLAGS="-arch x86_64"*

# *Set personal aliases, overriding those provided by oh-my-zsh libs,*

# *plugins, and themes. Aliases can be placed here, though oh-my-zsh*

# *users are encouraged to define aliases within the ZSH_CUSTOM folder.*

# *For a full list of active aliases, run `alias`.*

#

# *Example aliases*

# *alias zshconfig="mate ~/.zshrc"*

# *alias ohmyzsh="mate ~/.oh-my-zsh"*

# *To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.*

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

#*## Enviroment Variables*

export PATH=$PATH:/usr/local/opt/node@14/bin

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.10.jdk/Contents/Home

export PATH=$PATH:$ANDROID_HOME/emulator

export PATH=$PATH:$ANDROID_HOME/tools

export PATH=$PATH:$ANDROID_HOME/tools/bin

export PATH=$PATH:/usr/local/Cellar/openvpn/2.5.8/sbin

export PATH="/opt/homebrew/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export PATH=$PATH:/Applications/WezTerm.app/Contents/MacOS
source /share/powerlevel10k/powerlevel10k.zsh-theme
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
