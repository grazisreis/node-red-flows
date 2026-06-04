FROM nodered/node-red

USER root

RUN apk add --no-cache curl

# Baixa o flows.json do GitHub
RUN curl -fsSL \
  https://raw.githubusercontent.com/grazisreis/node-red-flows/main/flows_helios.json \
  -o /data/flows.json

# Gera o flows_cred.json com as credenciais do broker MQTT
# O conteúdo é um JSON simples; o Node-RED vai re-encriptar na 1ª inicialização
# usando o credentialSecret fixo definido abaixo
RUN echo '{"43bcb9a105cc404a":{"user":"heliosdatahub","password":"Helios123"}}' \
  > /data/flows_cred.json

# Copia o settings.js customizado
COPY settings.js /data/settings.js

USER node-red
EXPOSE 1880
CMD ["node-red", "--userDir", "/data"]
