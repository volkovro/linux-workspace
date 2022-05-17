FROM rockylinux:8

LABEL vendor="volkovro"

ENV LANG en_US.utf8
ENV VERSIONGO 1.18.2
ENV VERIFY_CHECKSUM false

ADD ./.bashrc /root/
ADD ./.vimrc /root/
ADD ./.tmux.conf /root

RUN dnf upgrade -y && \
    dnf install -y \
    git gettext wget vim vim-common tmux jq rsync tar python3-pip gcc make bash-completion && \
    git clone https://github.com/chriskempson/base16-shell.git /root/.config/base16-shell && chmod +x /root/.config/base16-shell/scripts/* && \
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && vim -c "set nomore" -c PlugInstall -c q -c q && \
    curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl && chmod +x kubectl && mv kubectl /usr/local/bin/ && \
    curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash && \
    echo -e "\nDo not panic! Software download in progress\n" && \
    wget -q https://github.com/mikefarah/yq/releases/download/v4.1.0/yq_linux_amd64 -O /usr/bin/yq && chmod +x /usr/bin/yq && \
    wget -q https://golang.org/dl/go$VERSIONGO.linux-amd64.tar.gz -P /root/ && tar -C /usr/local -xzf /root/go$VERSIONGO.linux-amd64.tar.gz && \
    rm -rf /root/go$VERSIONGO.linux-amd64.tar.gz && \
    pip3 install -U pip && \
    pip install ansible && \
    wget -q -O- https://sourceforge.net/projects/sshpass/files/latest | tar -xz && ./sshpass-*/configure && make && make install && rm -rf sshpass-* && \
    echo -e "\nsource <(kubectl completion bash)\nsource <(helm completion bash)\nsource /etc/profile.d/bash_completion.sh"  >> /root/.bashrc && \
    dnf clean all

ENV VERIFY_CHECKSUM true

WORKDIR /mnt
