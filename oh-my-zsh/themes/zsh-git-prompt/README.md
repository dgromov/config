# Informative git prompt for zsh

This is largely a clone of https://github.com/olivierverdier/zsh-git-prompt.

Two main differences. 
    - This version has no haskel implementation
    - The git status looks at a a dkg.nodiff git config variable. If it is set, the prompt won't recalculate the diff. That is very useful on big directories.

