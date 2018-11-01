# Build Image for Secure Backendend
FROM dyalog/jsonserver:dbg

# JSONServer Startup Parameters
ENV MAXWS=256M
ENV CodeLocation=/app
ENV Port=8080

# Point to folder containing CA certs
ENV Secure=1
ENV RootCertDir=/certs/ca    
# Set SSLValidation to 64: request, but do not require certificate
ENV SSLValidation=64         
# Identify Server cert and key files
ENV ServerCertFile=/certs/server/myserver-cert.pem 
ENV ServerKeyFile=/certs/server/myserver-key.pem 

# Add certificates and the application code
ADD test-certs /certs
ADD backend /app

CMD dyalog /JSONServer/Distribution/JSONServer.dws