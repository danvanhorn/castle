## Set Up Instructions

1 Make sure you have zsh installed. It is preloaded on MacOS.
```
apt install zsh
```
2 Make sure you have ruby and `gem` installed.
```
apt install ruby
```
3 Get [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
  - wget 
  ```
  sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
  ```
  - curl 
  ```
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  ```

4 Get [homesick](https://github.com/technicalpickles/homesick)
```
gem install homesick
```
5 Clone and link the dotfiles
```
homesick clone danvanhorn/castle [optional: repo name]
homesick link [repo name]
```
