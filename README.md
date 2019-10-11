# Vim-Settings
place in vim ~/.vimrc

SSH Keys

In order to pull code and log into the development, staging, and production servers, you'll need to create an SSH keypair. 

$ ssh-keygen -t rsa -b 4096 -C "your_email"
$ ssh-add -K ~/.ssh/id_rsa
Be sure to provide a strong, memorable passcode when prompted. This creates two files: ~/.ssh/id_rsa, which contains your private key, and ~/.ssh/id_rsa.pub, which contains your public key. Keep your private key secret: no one else should ever need access to it.

Git Configuration
To avoid confusion, you'll want to set up Git so that your commits are correctly attributed.

$  git config --global user.name "<Your Name>"
$  git config --global user.email "<Your Email>"
