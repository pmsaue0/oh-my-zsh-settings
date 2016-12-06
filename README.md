# Oh My Zsh terminal settings
## Including HG prompt, GIT prompt, terminal colors
I assume that you are using Sublime text editor as your default editor, but you can change that if you want in .zshrc.  You will also need to have Git and HG installed.  You will get textualized prompt for Mercurial and Git.

I customized the theme so that it would use theme colors from the terminal app itself instead of relying on specific colors declared in the theme.

![settings screenshot](http://i.imgur.com/t2FZ55M.png?1)

* install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) with this:
```
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
```

* Install [hg-prompt](https://bitbucket.org/sjl/hg-prompt/src) with this:
```
hg clone http://bitbucket.org/sjl/hg-prompt/
mkdir ~/bin
mv hg-prompt ~/bin/hg-prompt
```

* Modify `~/.hgrc` to include this:
```
[extensions]
prompt = ~/bin/hg-prompt/prompt.py
```

* Modify `~/.gitconfig` to include this:
```
[alias]
    # one-line log
    l = log --pretty=format:"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --date=short

    a = add
    ap = add -p
    c = commit --verbose
    ca = commit -a --verbose
    cm = commit -m
    cam = commit -a -m
    m = commit --amend --verbose

    d = diff
    ds = diff --stat
    dc = diff --cached

    st = status -s
    co = checkout
    cob = checkout -b
    # list branches sorted by last modified
    b = "!git for-each-ref --sort='-authordate' --format='%(authordate)%09%(objectname:short)%09%(refname)' refs/heads | sed -e 's-refs/heads/--'"

    # list aliases
    la = "!git config -l | grep alias | cut -c 7-"
```

* Copy the `.zshrc` and `.zsh-theme` files to your home dir with these commands:
```
git clone https://github.com/pmsaue0/oh-my-zsh-settings.git
cp ~/.zshrc ~/.zshrc.orig
cp oh-my-zsh-settings/.zshrc ~
cp oh-my-zsh-settings/00-sunrise.zsh-theme ~/.oh-my-zsh/themes/00-sunrise.zsh-theme
cp QuadraatSMono-Bold.otf ~/Library/Fonts
cp QuadraatSMono-BoldItalic.otf ~/Library/Fonts
cp QuadraatSMono-Italic.otf ~/Library/Fonts
cp QuadraatSMono-Regular.otf ~/Library/Fonts
```

* If you're not already in Zsh, you can use this command to change to it.
```
chsh -s /bin/zsh
```

* Install terminal colors (optional).  Go to the Terminal settings area and click the GEAR in the bottom left so that you can import any of the themes in this repo.  I like: `royal-quadraat.terminal` the best right now.