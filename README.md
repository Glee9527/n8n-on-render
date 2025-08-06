# 📦 n8n on Render - Slack x GPT x Jira

This repo allows you to deploy your custom n8n workflow (e.g. Slack > GPT > Jira Ticket) to [Render](https://render.com).

---

## 🚀 Steps to Deploy

### 1. Upload to GitHub

- Push this entire folder to a new GitHub repository.

### 2. Create a new Render "Web Service"

- Build Command: _leave empty_
- Start Command: `n8n`
- Runtime: Docker
- Root directory: `/` (or wherever `Dockerfile` is)
- Add environment variables (or load from `.env`)
    - Example: `N8N_PORT=5678`
    - `WEBHOOK_URL=https://your-service.onrender.com`

### 3. Enable persistent disk (for workflows to persist)

- Use Render's **Persistent Disk** in the `/home/node/.n8n` directory

### 4. Set webhook in your Slack Bot to:

```
https://your-render-url.onrender.com/webhook/slack-interact
```

### 5. Import your workflow into Render-hosted n8n

- Go to your Render URL (e.g. https://your-app.onrender.com)
- Import the `.json` you exported from your local n8n
- Or recreate it manually

---

Need help? Ping your bot logs or redeploy via Render dashboard.