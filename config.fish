alias c 'clear'

alias ...   'cd ../..'
alias ....  'cd ../../..'
alias ..... 'cd ../../../..'

alias md 'mkdir -p'

alias l1 'tree --dirsfirst -ChFL 1'
alias l2 'tree --dirsfirst -ChFL 2'
alias l3 'tree --dirsfirst -ChFL 3'

alias ll1 'tree --dirsfirst -ChFupDaL 1'
alias ll2 'tree --dirsfirst -ChFupDaL 2'
alias ll3 'tree --dirsfirst -ChFupDaL 3'

alias l  'l1'
alias ll 'll1'

alias ga 'git add'
alias gc 'git commit'
alias gp 'git push'
alias gl 'git pull'
alias gst 'git status'
alias gcm 'git checkout master'
alias gd 'git diff'
alias gcl 'git clone'
alias show-stashes 'bass git stash list | awk -F: \'{ print "\n\n\n\n"; print $0; print "\n\n"; system("git stash show -p " $1); }\''

set -g -x EDITOR 'nvim'

alias pcat 'pygmentize -f terminal256 -O -g'

set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'

# Init Z
. ~/.config/fish/z-fish/z.fish

function fish_prompt
  set last_status $status

  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)
  set_color normal

  printf '%s ' (__fish_git_prompt)

  set_color normal
end

set -xU LEIN_FAST_TRAMPOLINE 'y'
alias cljsbuild "lein trampoline cljsbuild"

alias npm-init "bass source ~/.nvm/nvm.sh ';' nvm use iojs-v3"

alias vim 'nvim'

/* AnyBar */
alias bred "echo -n \"red\" | nc -4u -w0 localhost 1738"
alias bblue "echo -n \"blue\" | nc -4u -w0 localhost 1738"
alias byellow "echo -n \"yellow\" | nc -4u -w0 localhost 1738"

/* Python Hell */
set -xU LC_ALL 'en_US.UTF-8'
set -xU LANG 'en_US.UTF-8'

eval (direnv hook fish)
