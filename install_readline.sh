cd ~/ && mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
echo 'export PATH="~/homebrew/bin:$PATH"' >> ~/.bash_profile
