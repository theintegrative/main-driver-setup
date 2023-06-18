FROM opensuse/leap
ARG username="theintegrative"
ARG password="verysecretboob"
RUN echo $username
RUN useradd $username -m
RUN grep $username /etc/shadow
RUN echo $username:$password | chpasswd
RUN zypper --non-interactive in -y sudo keepassxc ansible git gh glab
RUN echo "$username ALL = (ALL) NOPASSWD: ALL" >> /etc/sudoers
#RUN usermod -aG sudo $username
USER $username
WORKDIR /home/$username/
