setenv EDITOR emacs

##############################
# Set up my aliases:
##############################
alias la 'ls -laF'
alias ll 'ls -LlaF'
alias em 'emacs'
alias m 'less'
alias cpan_shell 'perl -MCPAN -e shell'
alias list_sym 'nm -D -C -u'
alias whichrpm 'rpm -qf'
alias unix2dos 'recode lat1..ibmpc'
alias rcs_diff 'diff -I \$Id'

##############################
# Set up tcsh:
##############################
set history=200                         # command history
set prompt="%B%n@%m%b:%c03%# "          # produces "mdavis@k13-035:~/wrangel/mux_env> "
set nobeep                              # turn off annoying beep
set complete=enhance                    # ignores case and considers `.', `-' and `_' to be word separators and hyphens and underscores to be equivalent
set autoexpand                          # expand-history editor command is invoked automatically before each completion attempt
set autocorrect                         # spell-word editor command is invoked automatically before each completion attempt
unset correct                           # don't do anything after I hit 'Enter'!
