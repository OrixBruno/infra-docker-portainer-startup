export PATH=$PATH:/usr/bin && \
sudo apt update -y && \
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y && \
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && \
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" -y && \
sudo apt update -y && \
apt-cache policy docker-ce && \
sudo apt install docker-ce -y && \
sudo systemctl enable docker && \
sudo usermod -aG docker $USER && \
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
sudo mv /usr/local/bin/docker-compose /usr/bin/docker-compose && \
sudo chmod +x /usr/bin/docker-compose
