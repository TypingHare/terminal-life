# The following commands are often used in listing files and directories.
# LSD is a substitute of the builtin "ls" command with powerful features. The
# link to the GitHub repository of LSD is as follows:
#
#     https://github.com/lsd-rs/lsd
#
# Make sure you have installed LSD before using these commands.
# By default, it groups directory first, so all directories are displayed
# above files. It also sorts by time, so recently updated files or directories
# are at the top.
alias l="lsd --group-directories-first --timesort"
alias ll="l -l"
alias la="l -lA"
alias tree="lsd --tree --group-directories-first --timesort"

# Rewrite the builtin "cd" function, making it runs "ll" whenever it enters a
# directory.
function cd() {
  builtin cd "$@" && ll
}

# A helper function for displaying the help information of an application,
# which is usually accessible with the "--help" option. This function will
# then pipe the help information into less.
function help() {
  # Display the usage if the app name is missing
  if [ -z "$1" ]; then
    echo "Usage: help <app>"
    return 1
  fi

  "$1" --help | less
}

# The "clear" command is often used, so just shorten it
alias cl="clear"

# My main terminal-based text editor is neovim
alias n="nvim"

# List all commands sorted
alias commands="compgen -c | sort | uniq"

### Trash ###
alias rm='trash'
