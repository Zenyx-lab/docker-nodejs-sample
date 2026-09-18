# Todo-Applikation

In diesem Projekt wurde eine sehr einfache **Todo-Applikation** geklont und anschliessend eine Umgebung mittels **Docker** erstellt.

## Voraussetzungen

Für die Ausführung werden folgende Applikationen benötigt:

- Git
- [GitHub](https://github.com/) (im Web)
- [Docker](https://www.docker.com/)
- [VS Code](https://code.visualstudio.com/)
- [Node.js](https://nodejs.org/)

## Repository klonen

Zuerst wird das Repository mit folgendem Befehl geklont:

```bash
git clone https://github.com/Zenyx-lab/docker-nodejs-sample.git
```

1. Danach wird mit `cd` in den Projektordner gewechselt:

```bash   
cd docker-nodejs-sample
```

2. Anschliessend wird mit Node.js das benötigte `npm`-Paket installiert:

```bash
npm install
```


## Anwendung lokal starten

Nach dem Installieren wird die Anwendung lokal gestartet:

```bash
npm start
```

Danach kann man die Anwendung über folgende Adresse erreichen:

```
http://localhost:3000
```


```

## Docker-Image erstellen

Um die Anwendung mit Docker auszuführen, wird zuerst ein **Docker-Image** erstellt:

```bash
docker build -t todo-app .
```

## Anwendung mit Docker starten

Nach dem Erstellen des Docker-Images kann der Container gestartet werden:

```bash
docker run --name todo-container -p 3000:3000 todo-app
```

Die Anwendung ist danach mit der gleichen Adresse erreichbar:

```
http://localhost:3000
```

## Vorhandenen Container erneut starten

Falls der Container bereits erstellt wurde und nur gestoppt ist, muss kein neuer erstellt werden. Er kann einfach gestartet werden:

```bash
docker start todo-container
```

## Anwendung mit Docker Compose starten

Die Anwendung kann alternativ mit **Docker Compose** gestartet werden:

```bash
docker compose up
```

Falls die Container im Hintergrund gestartet werden sollen:

```bash
docker compose up -d
```

## Anwendung stoppen

Ein laufender Docker-Container kann mit folgendem Befehl gestoppt werden:

```bash
docker stop todo-container
```

Bei Docker Compose kann die Anwendung mit folgendem Befehl gestoppt werden:

```bash
docker compose down
```