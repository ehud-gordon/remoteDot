```bash
ssh-keygen -t ed25519 -C "ehud.gordon@campus.technion.ac.il"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519  

git clone --bare git@github.com:ehud-gordon/remoteDot.git $HOME/.mycfg  
git --git-dir=$HOME/.mycfg/ --work-tree=$HOME checkout
```
