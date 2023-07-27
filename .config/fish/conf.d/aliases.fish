############################################
#                 FUNCTIONS                #
############################################


# Functions needed for !! and !$

function __history_previous_command
  switch (commandline -t)
  case "!"
    commandline -t $history[1]; commandline -f repaint
  case "*"
    commandline -i !
  end
end

function __history_previous_command_arguments
  switch (commandline -t)
  case "!"
    commandline -t ""
    commandline -f history-token-search-backward
  case "*"
    commandline -i '$'
  end
end

# The bindings for !! and !$
if [ $fish_key_bindings = "fish_vi_key_bindings" ];
  bind -Minsert ! __history_previous_command
  bind -Minsert '$' __history_previous_command_arguments
else
  bind ! __history_previous_command
  bind '$' __history_previous_command_arguments
end

# Function for creating a backup file
# ex: backup file.txt
# result: copies file as file.txt.bak
function backup --argument filename
    cp $filename $filename.bak
end

# Function for copying files and directories, even recursively.
# ex: copy DIRNAME LOCATIONS
# result: copies the directory and all of its contents.
function copy
    set count (count $argv | tr -d \n)
    if test "$count" = 2; and test -d "$argv[1]"
	set from (echo $argv[1] | trim-right /)
	set to (echo $argv[2])
        command cp -r $from $to
    else
        command cp $argv
    end
end


############################################
#                  ALIASES                 # 
############################################


alias v=lvim
alias sv='sudo lvim'
#alias e="emacsclient -c -a 'emacs'"
alias config='/usr/bin/git --git-dir=$HOME/Documents/Repos/DotFiles --work-tree=$HOME'

# replace 'ls' with 'exa'
alias ls='exa --icons'
alias ll='exa -l --git --icons'
alias la='exa -la --git --icons'
alias lt='exa -la --git --icons --tree'
alias edge=microsoft-edge-stable
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# custom Functions
function td
  touch file.dart
  echo "int calculate() {
  return 6 * 7;
}" >> file.dart
end
