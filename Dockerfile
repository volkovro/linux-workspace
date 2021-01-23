FROM  python:3.9.0-slim

LABEL vendor="rvolkov"

ADD ./ /root/

RUN apt-get update && \
    apt-get install -y \
    curl ssh git wget sshpass vim-runtime vim-common tmux jq rsync && \
    git clone https://github.com/chriskempson/base16-shell.git /root/.config/base16-shell && chmod +x /root/.config/base16-shell/scripts/* && \
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && vim -c "set nomore" -c PlugInstall -c q -c q && \
    echo "\nDo not panic! Software download in progress\n" && \
    wget -q https://github.com/mikefarah/yq/releases/download/v4.1.0/yq_linux_amd64 -O /usr/bin/yq && chmod +x /usr/bin/yq && \
    wget -q https://golang.org/dl/go1.15.7.linux-amd64.tar.gz -P /root/ && tar -C /usr/local -xzf /root/go1.15.7.linux-amd64.tar.gz && \
    pip install --upgrade pip && \
    pip install ansible && \
    apt-get clean && apt-get autoremove -y && rm -rf /var/lib/apt/lists/*

WORKDIR /mnt