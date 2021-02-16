FROM neo4j:enterprise
#FROM ongdb:latest
LABEL maintainer="ben@corepoint.be"

# Configureer Neo4j
# https://neo4j.com/docs/operations-manual/current/reference/configuration-settings/
# https://neo4j.com/docs/operations-manual/current/docker/configuration/#docker-environment-variables

# During tutorials, a neo4j password was used
# ENV NEO4J_AUTH=neo4j/trinity
ENV NEO4J_dbms_security_auth__enabled=false
ENV NEO4J_ACCEPT_LICENSE_AGREEMENT=yes

# APOC plugin
ENV APOC_VERSION 3.5.0.6
ENV APOC_JAR apoc-${APOC_VERSION}-all.jar
ENV APOC_URI https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/${APOC_VERSION}/${APOC_JAR}
RUN curl --fail --silent --show-error --location --output ${APOC_JAR} ${APOC_URI} && mv ${APOC_JAR} plugins/${APOC_JAR}

# Graph algorithms
ENV GRAPH_ALGORITHMS_VERSION 3.5.4.0
ENV GRAPH_ALGORITHMS_VERSION_JAR graph-algorithms-algo-${GRAPH_ALGORITHMS_VERSION}.jar
ENV GRAPH_ALGORITHMS_URI https://github.com/neo4j-contrib/neo4j-graph-algorithms/releases/download/${GRAPH_ALGORITHMS_VERSION}/${GRAPH_ALGORITHMS_VERSION_JAR}
RUN curl --fail --silent --show-error --location --output ${GRAPH_ALGORITHMS_VERSION_JAR} ${GRAPH_ALGORITHMS_URI} && mv ${GRAPH_ALGORITHMS_VERSION_JAR} plugins/${GRAPH_ALGORITHMS_VERSION_JAR}

ENV NEO4J_dbms_security_procedures_unrestricted=apoc.\\\*,algo.\\\*
ENV NEO4J_metrics_enabled=false

# NOTE: install cypher-shell with brew install cypher-shell