FROM oraclelinux:8

LABEL vendor="volkov-r-net"

ADD ./ /root/

RUN dnf upgrade -y && \
    dnf install -y \
    git wget vim vim-common tmux jq rsync tar python3-pip gcc make && \
    git clone https://github.com/chriskempson/base16-shell.git /root/.config/base16-shell && chmod +x /root/.config/base16-shell/scripts/* && \
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && vim -c "set nomore" -c PlugInstall -c q -c q && \
    echo -e "\nDo not panic! Software download in progress\n" && \
    wget -q https://github.com/mikefarah/yq/releases/download/v4.1.0/yq_linux_amd64 -O /usr/bin/yq && chmod +x /usr/bin/yq && \
    wget -q https://golang.org/dl/go1.16.4.linux-amd64.tar.gz -P /root/ && tar -C /usr/local -xzf /root/go1.16.4.linux-amd64.tar.gz && \
    rm -rf /root/go1.16.4.linux-amd64.tar.gz && \
    pip3 install -U pip && \
    pip install ansible && \
    wget -q -O- https://sourceforge.net/projects/sshpass/files/latest | tar -xz && ./sshpass-*/configure && make && make install && rm -rf sshpass-* && \
    dnf clean all

WORKDIR /mnt