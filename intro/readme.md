This part will help you set up your environment and give you an introduction to the terminal and bash programming.

### Prerequisites
##### Windows (10)
To complete this assignment on Windows, you are going to require some virtual machine as Windows doesn't support a Unix based terminal.
We suggest using the Windows Subsystem for Linux as it is easy to set up and provides all needed functionality for this assignment.

To install Windows Subsystems for Linux, follow the instructions on the [Microsoft documentation page](https://docs.microsoft.com/en-us/windows/wsl/install-win10).
We suggest picking the Ubuntu 18.04 LTS distribution as we have tested this for this assignment.

If you are using an older version of windows, you'll need a full fetched virtual machine. We recommend using VirtualBox with Ubuntu. [This](https://itsfoss.com/install-linux-in-virtualbox/) tutorial on how to set it up should help you through the process.
```shell script
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
More information can be found on the [Homebrew](https://brew.sh/) website.


### Setup
All these questions can be answered by only using the mandatory Unix commands, which means that there will be no need to install additional packages to answer a question.
A list of all these commands can be found [here](https://en.wikipedia.org/wiki/List_of_Unix_commands) by filtering the third column on `Mandatory`

Although this assignment is designed only to use the native commands, we want to give you some familiarity with installing software using the terminal.
Most Unix systems use a package manager as was already described in the mac and Linux Prerequisites.
Package managers help you manage and install software by just specifying the name of the software you want to install or remove.

To do this, these package managers connect to an extensive database of software that contains the download location and install instructions.
Let's start by opening a terminal.

##### Windows (10)
To open a Unix terminal in Windows Subsystems for Linux make sure you [initialized](https://woshub.com/install-wsl-windows-subsystem-linux/) you distribution. Then open the `cmd` or `powershell` and type `bash`.
This will give you a Linux terminal.

##### linux & Mac
On Mac and Linux the terminal can be opened by launching the terminal app.

Assuming that this is the first time that you use your package manager, we will first need to update its references and the package manager itself. The way to do this varies based on the package manager.
Let's look at how to do this for several of them.

**Ubuntu 18**
```shell script
sudo apt update
```

**Ubuntu 16**
```shell script
sudo apt-get update
```

**Mac**
```shell script
brew update
```

Now that the packages are up to date, we can install our packages. For this example, we will install lolcat. lolcat is a program that takes the regular terminal output and makes it rainbow-colored.
Yes we know, this is what you've always needed.

Installing `lolcat` can be done by using the following command.

**Ubuntu 18**
```shell script
sudo apt install lolcat
```

**Ubuntu 16**
```shell script
sudo apt-get install lolcat
```


**Mac**
```shell script
brew install lolcat
```

`lolcat` should now be installed, and you are all ready to go.

### Assignment

To start of this assigment open [intro.sh](<intro.sh>) in a text editor and follow the instructions.
If you are completely new to the world of terminals I'd recommend watching [this](https://www.youtube.com/watch?v=oxuRxtrO2Ag&t=576s) tutorial.

**Note:** if you are editing these files on windows be aware that windows uses different line separators. Editors like sublime, notepad++ and intelliJ allow you to change the line separator.