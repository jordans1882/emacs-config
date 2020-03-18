curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python && \
echo "PATH=~/.cask/bin:$PATH" >> .bashrc
cd ~/.emacs.d && cask && cask install && cask build
