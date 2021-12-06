# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/trentbrew/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="bureau"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# ---- vscode ----

alias c='code-insiders .'
alias ci='c'
alias vscode-settings="code-insiders ~/Library/'Application Support'/'Code - Insiders'/User/settings.json"

# ---- finder ----

alias o='open .'

# ---- zsh ----

alias permit="chmod +x $1"
alias zshrc="cd ~ && c .zshrc"
alias bashrc="zshrc"
alias l="ls -a"
alias la="ls -al"
alias plz="sudo"

function cd() {
    new_directory="$*";
    if [ $# -eq 0 ]; then
        new_directory=${HOME};
    fi;
    builtin cd "${new_directory}" && ls -a
}

# ---- node ----

alias v-serve='npm run serve'
alias s-serve='npm run dev'
alias r-serve='npm run start'
alias i='npm install'

# ---- docker ----

alias compose='docker-compose up --build'
alias compose-worker='docker-compose --file dc_worker.yml up --build'
alias decompose='docker-compose down --remove-orphans'

# ---- git ----

alias git-playground='cd ~/home/lofty/playground/git-playground && c .'
alias gap='git add . && git commit -m "auto" && git push -u origin master'
# alias git-fresh='git checkout development && git pull --rebase && git checkout $1 && git rebase development'
alias oneline='git log --oneline'
alias ol="git log --oneline"
alias commit="git add . && git commit -m $1"
alias check="git checkout $1"
alias dev="git checkout development"
alias abort="git rebase --abort"
alias rebase="git rebase -i $1"
alias rb="git rebase -i $1"
alias status="git status"
alias s="git status"
alias push="git add . && git commit -m $1 && git push"

# ---- svelte ----

alias svelte='npx degit sveltejs/template new-svelte-project && cd new-svelte-project && npm i && c .'

# ---- firebase ----

alias auth='firebase logout && firebase login'
alias deploy='npm run build && firebase deploy'
alias deploy-functions='firebase deploy --only functions'
alias fireshell='npm run fireshell'

# ---- jutsu ----

alias shadowclone='zx ~/Development/scripts/git/shadowclone/index.mjs'

# ---- navigation ----

alias ..='cd ..'
alias home='cd ~'

# ---- project paths ----

alias ...lw='~/home/trtl/trtl-clients/leadershipwise-app/refactor-iterations/r2/leadershipwise'
alias ...decker='~/home/lofty/decker/decker-fp'

# ---- open projects ----

alias ws-decker='cd ~/home/lofty/decker/decker-fp && c .'
alias ws-lw='cd ~/home/trtl/trtl-clients/leadershipwise-app/refactor-iterations/r2/leadershipwise && c .'

# ---- django ----

alias web-bash='docker-compose run web bash'

# ---- flutter ----

alias flutter-playground='cd ~/home/playground/flutter-playground/quizapp && c'
alias pub-get='flutter pub get'
alias pub-upgrade='flutter pub upgrade'
alias flutter-reset='flutter clean && flutter pub get'
alias clean-run='flutter clean && flutter run'
alias run-splash='flutter pub run flutter_native_splash:create'
alias fr="flutter run"
alias run-samsung="flutter run -d 9889ba355250385257"
alias run-pixel="flutter run -d emulator-5554" # Pixel 4a
alias run-ios="flutter run -d 705E78F8-6EF7-4D3C-9DF3-1EB6753AA2C3" # iPhone 13 Pro
alias update-app-icon="flutter pub run flutter_launcher_icons:main"

export PATH=$PATH:/Users/trentbrew/home/playground/chromium-build/depot_tools