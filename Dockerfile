FROM nodered/node-red
USER root
RUN apk add --no-cache curl && \
    curl -o /data/flows.json https://raw.githubusercontent.com/grazisreis/node-red-flows/refs/heads/main/flows_helios.json
USER node-red
EXPOSE 1880
CMD ["node-red"]
