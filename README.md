# Oh My Zsh settings
## Including HG prompt, GIT prompt, terminal colors
I assume that you are using Sublime text editor as your default editor, but you can change that if you want in .zshrc.  You will also need to have Git and HG installed.  You will get textualized prompt for Mercurial and Git.

I customized the theme so that it would use theme colors from the terminal app itself instead of relying on specific colors declared in the theme.

![settings screenshot](http://i.imgur.com/t2FZ55M.png?1)

* install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
```
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
```

* Install [hg-prompt](https://bitbucket.org/sjl/hg-prompt/src)  (Git prompt is installed automatically with oh-my-zsh)
```
hg clone http://bitbucket.org/sjl/hg-prompt/
mkdir ~/bin
mv hg-prompt ~/bin/hg-prompt
```

* Modify `~/.hgrc` to include:
```
[extensions]
prompt = ~/bin/hg-prompt/prompt.py
```

* Copy the .zshrc and .zsh-theme files to your home dir with these commands:
```
git clone https://github.com/pmsaue0/oh-my-zsh-settings.git
cp ~/.zshrc ~/.zshrc.orig
cp oh-my-zsh-settings/.zshrc ~
cp oh-my-zsh-settings/00-sunrise.zsh-theme ~/.oh-my-zsh/themes/00-sunrise.zsh-theme
```

* If you're not already in Zsh, you can use this command to change to it.
```
chsh -s /bin/zsh
```

* Install terminal colors (optional).  Go to the Terminal settings area and click the GEAR in the bottom left so that you can import the theme in this repo: `royal-theme.terminal`.  This will give you terminal colors based on the Solarized theme.