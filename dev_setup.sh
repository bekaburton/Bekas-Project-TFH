#/bin/bash


#### Install Docker <https://docs.docker.com/engine/install/ubuntu/>:
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER


##### Install AWS CLI <https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-linux.html>:
# install aws cli2
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# configure credentials
aws configure


#### Install Brew and AWS SAM CLI <https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-sam-cli-install-linux.html>
# Install Brew:
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Add brew to path:
test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
test -r ~/.profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile
echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile
# Check brew version:
brew --version

# Install aws sam cli
brew tap aws/tap
brew install aws-sam-cli


#### Install CodeClimate <https://github.com/codeclimate/codeclimate>
curl -L https://github.com/codeclimate/codeclimate/archive/master.tar.gz | tar xvz
cd codeclimate-* && sudo make install


##### Install Makefile specific tooling and Python Env:
sudo apt-get install jq -y
pip3 install poetry
poetry install
