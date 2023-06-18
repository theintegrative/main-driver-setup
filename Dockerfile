ARG $LARGE_SECRET
FROM opensuse/leap
RUN useradd theintegrative
RUN passwd $user --stdin $LARGE_SECRET
RUN usermod -aG sudo username
RUN zypper in -y sudo keepassxc ansible git gh glab
USER john
