FROM n8nio/n8n:latest

# Use non-root user
USER root
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n
USER node

# 必要的 port 與路徑設定
ENV N8N_PORT=5678
ENV N8N_USER_FOLDER=/home/node/.n8n
EXPOSE 5678

# ✅ 明確指定啟動指令
CMD ["n8n"]
