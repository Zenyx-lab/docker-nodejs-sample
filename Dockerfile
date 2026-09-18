FROM node:24-alpine
# Legt fest, auf welchem Basis-Image dein 
# eigenes Docker-Image aufgebaut wird.
WORKDIR /app
#Legt das Arbeitsverzeichnis 
# innerhalb des Containers fest.
COPY package*.json ./
#Kopiert zuerst nur die 
#Paketinformationen in den Container.
RUN npm ci
#Installiert die benötigten Node.js-Pakete innerhalb des Docker-Images.
COPY . .
#Kopiert anschliessend den restlichen Projektinhalt in das Image
EXPOSE 3000
#Legt den Port fest, auf dem die Anwendung im Container läuft.
CMD ["npm", "start"]