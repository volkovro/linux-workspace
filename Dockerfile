FROM  python:3.8.7-slim

LABEL vendor="Volkov-R-Net"

RUN apt-get update && \
    apt-get install -y \
    curl ssh git wget sshpass vim-runtime vim-common tmux jq && \
    git clone https://github.com/chriskempson/base16-shell.git /root/.config/base16-shell && chmod +x /root/.config/base16-shell/scripts/* && \
    bash /root/.config/base16-shell/scripts/base16-material.sh && \
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && \
    wget https://github.com/mikefarah/yq/releases/download/v4.1.0/yq_linux_amd64 -O /usr/bin/yq && chmod +x /usr/bin/yq && \
    pip install ansible && \
    apt-get clean && apt-get autoremove -y && rm -rf /var/lib/apt/lists/*

ADD ./ /root/

WORKDIR /mnt
