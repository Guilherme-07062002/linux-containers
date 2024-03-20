# Containers Linux com Docker

## Introdução

Containers são uma forma de virtualização leve que permite executar aplicativos em ambientes isolados. Eles são uma alternativa aos ambientes virtuais tradicionais, que são mais pesados e consomem mais recursos. O Docker é uma plataforma de código aberto que facilita a criação, o gerenciamento e a execução de containers.

Antes de tudo, certifique-se de que o Docker está instalado e funcionando corretamente.

Para inicializar o ambiente, execute o comando:

```bash
chmod +x init.sh && ./init.sh
```

Para abrir o terminal de algum dos containers em modo interativo execute:

```bash
docker exec -it <container_name> /bin/bash
```

Neste cenário, cada container Debian terá o servidor SSH instalado e configurado, e suas portas SSH serão mapeadas para portas diferentes no host para evitar conflitos. Você pode se conectar a esses containers usando SSH. Por exemplo:

```bash
ssh root@<container_ip>
```


Caso seja retornado alguma mensagem de erro indicando problemas de permissão, execute o comando abaixo:

```bash
sudo usermod -aG docker $USER
```

Após executá-lo reinicie a máquina, provavelmente após isso você poderá executar os comandos normalmente sem maiores problemas.
