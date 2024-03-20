# Use a imagem Debian 11 como base
FROM debian:11

# Define a variável de ambiente TERM
ENV TERM=xterm
# Define a variável de ambiente DEBIAN_FRONTEND para noninteractive
ENV DEBIAN_FRONTEND=noninteractive

# Atualize o índice de pacotes e instale o servidor SSH
RUN apt-get update \
  && apt-get install -y openssh-server iptables net-tools nano curl wget aptitude \
  && rm -rf /var/lib/apt/lists/*

# Configurações adicionais do servidor SSH
RUN mkdir /var/run/sshd

# Adicione o usuário root com a senha root
RUN echo 'root:root' | chpasswd

# Permita a autenticação por senha
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# Exponha a porta 22 para permitir conexões SSH
EXPOSE 22

# Inicie o servidor SSH durante o início do container
CMD ["/usr/sbin/sshd", "-D"]