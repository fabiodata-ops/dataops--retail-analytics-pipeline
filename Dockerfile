# Usamos a imagem base oficial do Gitpod, que já vem otimizada.
FROM gitpod/workspace-full

# Evita que instaladores peçam inputs interativos
ENV DEBIAN_FRONTEND=noninteractive

# Atualiza os pacotes do sistema e instala o pipx para isolar ferramentas de linha de comando
USER gitpod
RUN sudo apt-get update && \
    sudo apt-get install -y python3-pip pipx && \
    sudo apt-get clean && \
    sudo rm -rf /var/lib/apt/lists/*

# Instala o Mage.ai usando pipx para garantir que ele esteja no PATH e não conflite com outras dependências
RUN pipx install mage-ai

# Define o diretório de trabalho padrão dentro do contêiner
WORKDIR /workspace/retail-analytics-pipeline