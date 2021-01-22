#### In VScode, you can use this container as a terminal. It is very comfortable.

* Run Visual Studio Code
* Press `CMD/CTRL + SHIFT + P` and write in window `settings.json`
* Add in your `setting.json' following lines:
    * `"terminal.integrated.shell.windows": "C:\\WINDOWS\\System32\\WindowsPowerShell\\v1.0\\powershell.exe",`
    
    * `"terminal.integrated.shellArgs.windows": ["cd C:\\path\\to\\you\\favorite\\folder\\; (docker-compose up -d); docker exec -it foldername_workspace_1 bash"]`

##### Caution!:
* *Don't forget to change `C:\\path\\to\\you\\favorite\\folder\\` to real path to yor folder with **docker-compose.yml** file*
* *Run `docker ps -a`, your container name will be different from **foldername_workspace_1** in my example*
