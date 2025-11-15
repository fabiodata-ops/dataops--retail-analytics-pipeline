# Usamos a imagem base oficial do Gitpod, que já vem otimizada.
FROM gitpod/workspace-full

# Como usuário 'gitpod', atualizamos os pacotes e instalamos o mage-ai diretamente com pip3
# Isso garante que o executável estará no PATH padrão do sistema.
USER gitpod
RUN sudo apt-get update && \
    pip3 install --user mage-ai && \
    sudo apt-get clean && \
    sudo rm -rf /var/lib/apt/lists/*

# Define o diretório de trabalho padrão dentro do contêiner
WORKDIR /workspace/dataops--retail-analytics-pipeline
