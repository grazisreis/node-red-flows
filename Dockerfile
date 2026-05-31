FROM nodered/node-red
RUN curl -o /data/flows.json https://raw.githubusercontent.com/grazisreis/node-red-flows/refs/heads/main/flows_helios.json
EXPOSE 1880
CMD ["node-red"]
