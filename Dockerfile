FROM java:6

RUN wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.31.3/install.sh | bash && \
 . ~/.nvm/nvm.sh && nvm install 6.1.0

 