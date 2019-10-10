# Docker

My local docker setup

## Initiele setup

Increase docker memory
One time setup of the external networks: `./bin/initialize-network`

## CLI

    ./bin/console ${COMPONENT}
    ./bin/rebuild ${COMPONENT} # you can also use this for the 1st build
    ./bin/restart ${COMPONENT}
    ./bin/stop ${COMPONENT}
    ./bin/nuke ${COMPONENT}

## Management

### Traefik

Traefik is a reverse proxy

    ./bin/rebuild traefik

### Portainer

Container management

    ./bin/rebuild portainer

* [http://apigateway:9001]()
* [http://apigateway/portainer]()

### MailCatcher

Mock SMTP

    ./bin/rebuild mailcatcher

* [http://apigateway:1080]()

## Data stores

### Postges

    ./bin/rebuild postgres

Install psql using homebrew:

    brew install libpq

    # Add libpq binaries to PATH
    echo 'export PATH="/usr/local/opt/libpq/bin:$PATH"' >> ~/.zshrc

### Neo4j

    ./bin/rebuild neo4j

* [http://apigateway:7474]()
* [http://apigateway/neo4j/browser]()

Install cypher-shell using homebrew:

    brew install cypher-shell

### Elasticsearch

    ./bin/rebuild elasticsearch

* [http://apigateway:9200]()
