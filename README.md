# Linux workspace for Windows

###### if for some reason you have to work in an unfamiliar environment - this can help you

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
* Change `$HOME/.config/base16-shell/scripts/base16-material.sh` in **.bashrc**, if don't like the default theme
* Run `dpkg-reconfigure tzdata`, to set the desired time zone
* Open any file with *vim* and run `:PlugInstall`

*Your needs may be broader than mine. Edit the **Dockerfile** and **docker-compose.yml** according to your needs.*

***Caution! Adding apt-get upgrade to the RUN clause will break build***

##
License MIT©
