# Linux workspace for Windows

###### if for some reason you have to work in an unfamiliar environment - this can help you

~~thanks can be sent to the e-mail in the profile~~

###

##### Who needs it:

* Devops engineers
* Anyone accustomed to Linux cli-utilities but forced to work with windows
* Anyone who cannot access hosts behind a VPN from WSL

##### Dependencies:
 * WSL 2
 * Docker desktop


#### How to use it:
*Docker desktop should be running!*

###### Git clone to your favorite empty folder or download and extract the archive into it

###### Open PowerShell:

`cd` \path\to\you\favorite\empty\folder

`docker-compose up -d`

`docker ps`

`docker exec -it` (copy and paste the name or id from the command output above) `bash`

##### After installation, inside container run:
* `bash /root/.config/base16-shell/scripts/`theme_name, if don't like the default theme
* `dpkg-reconfigure tzdata`, to set the desired time zone
* Open any file with *vim* and run `:PlugInstall`

*Your needs may be broader than mine. Edit the **Dockerfile** and **docker-compose.yml** according to your needs.

***Caution! Adding apt-get upgrade to the RUN clause will break build***

##
License MIT©
