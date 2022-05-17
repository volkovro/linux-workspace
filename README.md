# Portable linux workspace

###### *A container with a set of familiar tools*
###### if for some reason you have to work in an unfamiliar environment - this can help you
###### [Installation instructions as "Visual Studio Code" terminal](https://github.com/Volkov-R-Net/linux-workspace/blob/main/For%20VSCode%20Users.md)

#### Dependencies:
 ###### Windows:
  * Docker-desktop *(tested on WSL2)*
     * [Download](https://www.docker.com/products/docker-desktop "docker.com")
  *  Windows Terminal *(for theme)*
     *  [Download](https://www.microsoft.com/ru-ru/p/windows-terminal/9n0dx20hk701?activetab=pivot:overviewtab "microsoft-store")
 ###### MacOs:
  * Docker-desktop
     * [Download](https://www.docker.com/products/docker-desktop "docker.com")

#### How to use it:
 *Docker desktop should be running!*
 *Check that your Powershell has an alias for `cd`. If not, replace the `cd` in the construction below with `Set-Location -Path`*
 
 * ##### [Git clone](https://github.com/Volkov-R-Net/LinuxWorkspace.git "https") to your favorite empty folder or [download and extract the archive](https://github.com/Volkov-R-Net/LinuxWorkspace/archive/main.zip "main.zip") into it
 
 * ##### Open Windows Terminal with PowerShell:
    `cd` \path\to\you\favorite\folder
    
    `docker-compose up -d`
    
    `docker ps`
    
    `docker exec -it` (copy and paste the name or id from the command output above) `bash`
 
 * ###### On MacOS, the same actions need to be performed in Terminal

##### After installation, inside container:
 * Change `$HOME/.config/base16-shell/scripts/base16-material-palenight.sh` in **.bashrc**, if don't like the default theme
 * Run `dpkg-reconfigure tzdata`, to set the desired time zone

*Your needs may be broader than mine. Edit the **Dockerfile** and **docker-compose.yml** according to your needs.*

***Caution!***

 ***Git changes the newline character by default, which can cause problems when building the image. Comment on anything Vim-related, or study [THIS](https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration "git-scm.com") and take action.***

##

License MIT©
