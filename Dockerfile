FROM n8nio/n8n

ENV N8N_PORT=5678
ENV WEBHOOK_URL=https://your-service-name.onrender.com
ENV N8N_USER_FOLDER=/home/node/.n8n

EXPOSE 5678

ENTRYPOINT ["tini", "--"]
CMD ["n8n"]
