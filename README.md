# Install Script
![github ](https://media.giphy.com/media/ARl0AWhpycfRe/giphy.gif)


The script install's **homebrew** if it does not exists on your mac. Then it install's other applications that are required for React Native environment setup. 

## Note
**If you don't want to install some of the software listed below, you can comment out those softwares before running shell script**

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
````


## Post script
1. If your mac does not have bash_profile 
2. Run command ``` cd ~ ``` you're in home folder now. 
3. Run command ``` ls -al ``` the command will list all the files/folders within home directory including hidden
4. Check if there is a .bash_profile exists
5. If it does then paste export commands for android set up at the end of the bash_profile file
```
export ANDROID_HOME=~/Library/Android/sdk/
export PATH=$PATH:~/android-sdks/platform-tools/
export PATH=$PATH:~/android-sdks/tools/
```
6. If it does not exists then create one using command ``` touch ~/.bash_profile ```
7. Open the file and add the export statements listed under #5 