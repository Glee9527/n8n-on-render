FROM n8nio/n8n:latest

# Create a user to run n8n as non-root
USER root
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n
USER node

ENV N8N_USER_FOLDER=/home/node/.n8n

CMD ["n8n"]