# Linux workspace for Windows

###### if for some reason you have to work in an unfamiliar environment - this can help you
###### [Installation instructions as "Visual Studio Code" terminal](https://github.com/Volkov-R-Net/linux-workspace/blob/main/For%20VSCode%20Users.md)

~~thanks can be sent to the e-mail in the profile~~

###

##### Who needs it:

* Anyone who is tired of configuring WSL over and over again
* Anyone accustomed to Linux cli-utilities but forced to work with windows
* Anyone who cannot access hosts behind a VPN from WSL
* Anyone who wants an example of a cross-platform work space

##### Dependencies:
 * Docker desktop *(tested on WSL2)*
    * [Download](https://www.docker.com/products/docker-desktop "docker.com")
 *  Windows Terminal *(for theme)*
    *  [Download](https://www.microsoft.com/ru-ru/p/windows-terminal/9n0dx20hk701?activetab=pivot:overviewtab "microsoft-store")

#### How to use it:
*Docker desktop should be running!*

###### [Git clone](https://github.com/Volkov-R-Net/LinuxWorkspace.git "https") to your favorite empty folder or [download and extract the archive](https://github.com/Volkov-R-Net/LinuxWorkspace/archive/main.zip "main.zip") into it

###### Open Windows Terminal with PowerShell:

`cd` \path\to\you\favorite\folder

`docker-compose up -d`

`docker ps`

`docker exec -it` (copy and paste the name or id from the command output above) `bash`

##### After installation, inside container:
* Change `$HOME/.config/base16-shell/scripts/base16-material-palenight.sh` in **.bashrc**, if don't like the default theme
* Run `dpkg-reconfigure tzdata`, to set the desired time zone

*Your needs may be broader than mine. Edit the **Dockerfile** and **docker-compose.yml** according to your needs.*

***Caution!***

 ***Git changes the newline character by default, which can cause problems when building the image. Comment on anything Vim-related, or study [THIS](https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration "git-scm.com") and take action.***
##
License MIT©
