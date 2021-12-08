# ---- zsh ----

alias reset="zsh"
alias new="zsh"
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

# ---- navigation ----

alias ..='cd ..'
alias home='cd ~'

# ---- git ----

alias git-playground='cd ~/home/lofty/playground/git-playground && c .'
alias gap='git add . && git commit -m "auto" && git push -u origin master'
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

# ---- vscode ----

alias c='code-insiders .'
alias ci='c'
alias vscode-settings="code-insiders ~/Library/'Application Support'/'Code - Insiders'/User/settings.json"

# ---- finder ----

alias o='open .'

# ---- node ----

alias v-serve='npm run serve'
alias s-serve='npm run dev'
alias r-serve='npm run start'
alias i='npm install'
alias n="node"
alias run="node $1"

# ---- docker ----

alias compose='docker-compose up --build'
alias compose-worker='docker-compose --file dc_worker.yml up --build'
alias decompose='docker-compose down --remove-orphans'

# ---- django ----

alias web-bash='docker-compose run web bash'

# ---- firebase ----

alias auth='firebase logout && firebase login'
alias deploy='npm run build && firebase deploy'
alias deploy-functions='firebase deploy --only functions'
alias fireshell='npm run fireshell'

# ---- svelte ----

alias svelte='npx degit sveltejs/template new-svelte-project && cd new-svelte-project && npm i && c .'

# ---- flutter ----

alias pub-get='flutter pub get'
alias pub-upgrade='flutter pub upgrade'
alias flutter-reset='flutter clean && flutter pub get'
alias run-splash='flutter pub run flutter_native_splash:create'
alias update-app-icon="flutter pub run flutter_launcher_icons:main"
alias run-samsung="flutter run -d 9889ba355250385257" # Galaxy S8
alias run-pixel="flutter run -d emulator-5554" # Pixel 4a
alias run-ios="flutter run -d 705E78F8-6EF7-4D3C-9DF3-1EB6753AA2C3" # iPhone 13 Pro

# ---- jutsu ----

alias shadowclone='zx ~/Development/scripts/git/shadowclone/index.mjs'

