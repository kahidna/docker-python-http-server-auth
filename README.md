# docker-python-http-server-auth
dockerized Python HTTP server with auth. If you use Linux as an OS for your server, you can run a simple HTTP server with a single command: `python3 -m http.server`
This can be useful whenever you need to download a file from the server. The problem is, `http.server` doesn't have authentication. So it's a little bit risky whenever working in a wide space area, such as internet.

With SAUTH, you can run a simple HTTP server, including authentication provided.

# usage 
You can build  the Dockerfile or use an image from my Docker registry. Make sure the port that will be used is accessible. By default, sauth runs at port 8000. You can customize it using the environment variable name PORT. Then run following Docker command 
```docker
docker run -d --name simple-http --hostname simple-hhtp -v /exposed/directory:/data -p 4000:8888 -e USERNAMELOGIN=yourname -e PASSWORDLOGIN=yourpassword -e PORT=8888 kahidna/python-sauth:3.14
```
Or if you prefer, use Docker Compose:    
Clone this repo
```bash
git clone https://github.com/kahidna/docker-python-http-server-auth  
```
get in and then adjust the `volume`, `port` and `variables`, and then run `docker compose up -d`
