# oh-my-zsh-settings
Theme, color, terminal prompt settings.  It assumes that you are using Sublime text editor as your default editor, but you can change that if you want in .zshrc

I customized the theme so that it would use theme colors from the terminal app itself instead of relying on colors declared in the theme.

![settings screenshot](http://i.imgur.com/t2FZ55M.png?1)

* install [oh-my-zsh example link](https://github.com/robbyrussell/oh-my-zsh)
```
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
```
* cd to wherever you have cloned this oh-my-zsh-settings repo
* copy these files to your home dir with these commands
```
cp ~/.zshrc ~/.zshrc.orig
cp .zshrc ~
cp 00-sunrise.zsh-theme ~/.oh-my-zsh/themes/00-sunrise.zsh-theme
```
* If you're not already in Zsh, you can use this command to change to it.
```
chsh -s /bin/zsh
```
* Go to the Terminal settings area and click the GEAR in the bottom left so that you can import the theme in this repo: royal-theme.terminal.  This will give you terminal colors based on the Solarized theme.