<h1 align="center">Storm Breaker</h1>
<h3 align="center">for Docker</h3>

## ⚔️ Content

Files to Dockerize [Storm-Breaker](https://github.com/ultrasecurity/Storm-Breaker)

## 💾 Setup

- Create Authtoken at [NGROK](https://dashboard.ngrok.com/tunnels/authtokens)

- Set Environment variables (**export**):

   - **TF_VAR_VERSION_DOCKER_STORMBREAKER**=**```0.0.1```**
   - **TF_VAR_DOCKER_STORMBREAKER_PORT**=**```80```**
   - **TF_VAR_NGROK_API_KEY**=**```<YOUR_NGROK_API_KEY>```**
   - **TF_VAR_DOCKER_STORMBREAKER_USER**=**```<YOUR_USERNAME>```**
   - **TF_VAR_DOCKER_STORMBREAKER_PASSWORD**=**```<YOUR_PASSWORD>```**

- Run the following commands:
   ```bash
   # docker builder prune -fa
   # docker image prune -fa
   
   docker-compose build --no-cache
   docker-compose up -d --force-recreate
   ```

- Navigate to you **NGROK Tunnel Agents**: https://dashboard.ngrok.com/tunnels/agents

- Grab your URL (append **/index.php**)

## 🪲 Troubleshoot

- On Windows (*some errors on entrypoint.sh not found -> docker compose vs docker-compose*)

  - Open **```entrypoint.sh```** in **notepad++**
     - Edit -> EOL Conversion -> Unix (LF)
  - Run the following command:
      ```
      chmod +x entrypoint.sh
      ```
