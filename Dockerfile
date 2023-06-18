FROM opensuse/leap
ARG username="theintegrative"
ARG password="verysecretboob"
RUN zypper --non-interactive in -y sudo curl keepassxc ansible git gh glab python3-pip
RUN pip install ansible
RUN useradd $username -m
RUN echo $username:$password | chpasswd
RUN echo "$username ALL = (ALL) NOPASSWD: ALL" >> /etc/sudoers
USER $username
WORKDIR /home/$username/
