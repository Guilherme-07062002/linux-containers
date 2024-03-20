#!/bin/bash

# Configura as regras do iptables conforme necessário
# Por exemplo, você pode definir regras para permitir/denunciar tráfego de entrada/saída
# iptables -A INPUT -p tcp --dport 22 -j ACCEPT
# iptables -A INPUT -j DROP
# iptables -A OUTPUT -j ACCEPT

# Aplica as regras do iptables
# iptables-save > /etc/iptables/rules.v4

# Inicia o servidor SSH (se necessário)
# service ssh start

# Mantém o container em execução
tail -f /dev/null