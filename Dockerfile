FROM python:3.14-slim-trixie

ENV USERNAMELOGIN=admin

ENV PASSWORDLOGIN=nimda

ENV PORT=8000

COPY entrypoint.sh /

RUN pip install sauth && chmod +x /entrypoint.sh 

WORKDIR /data

CMD ["/entrypoint.sh"]
