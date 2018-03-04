# Install Script
![github ](https://media.giphy.com/media/ARl0AWhpycfRe/giphy.gif)


The script install's **homebrew** if it does not exists on your mac. Then it install's other applications that are required for React Native environment setup. 

## Install's software that are listed below
* google-chrome
* java8
* sublime-text
* android-studio
* android-platform-tools
* slack
* visual-studio-code 
* android-file-transfer
* node
* watchman
* postgresql
* react-native-cli
* 

## How to run the script
Run the script from your current directory. Open terminal and run the command
```
sh install.sh
```



# Authorize Script


The purpose of this script is to authorize new machine on github. It generates SSH key and then uploads that ssh key on your github. It takes your github username and password. It also prompts for the machine name. 
* Machine name can be Example:  **MacbookPro15** 

Run the script from your current directory. Open terminal and run the command
```
sh authorize.sh
```