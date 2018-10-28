# Build Image for Secure Frontend
FROM dyalog/jsonserver:dbg
RUN git clone https://github.com/Dyalog/JSONServer /JSONServer

# JSONServer Startup Parameters
ENV CodeLocation=/app
ENV Port=8080
ENV RootCertDir=/certs/ca    # folder containing CA certs
ENV SSLValidation=64         # (default is 64): request, do not require certificate
ENV ServerCertFile=/certs/server/myserver-cert.pem # server's public certificate
ENV ServerKeyFile=/certs/server/myserver-key.pem  # server's private key file
ENV MAXWS=256M

# Add certificates and the application
ADD ../test-certs /certs
ADD ../backend /app

CMD dyalog /JSONServer/Distribution/JSONServer.dws