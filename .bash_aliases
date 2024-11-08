alias ls="ls -lhF --color=auto"
alias ll="ls -AlhF --color=auto "
alias cl="cd && clear"
alias md="mkdir -p"
alias rm='rm -rdf'
alias cp='cp -r'
alias ppath='echo $PATH | tr ":" "\n"'
alias ealiases='vim ~/.bash_aliases'
alias ebashrc='vim ~/.bashrc'
alias reload='source ~/.bashrc'
# conda
alias torch='conda activate torch'
alias cal='conda activate limitr'
alias conda-activate='source ~/miniconda3/bin/activate'
alias cod="conda deactivate"
alias gits="git status"
# mount
alias mnt="sshfs ehud@cgm-atlas.ece.technion.ac.il:/export/data/home/shared-data /home/ehud/atlas_shared"
alias fmnt="fusermount -u /home/ehud/atlas_shared"
# git
alias mycfg='/usr/bin/git --git-dir=$HOME/.mycfg/ --work-tree=$HOME'
