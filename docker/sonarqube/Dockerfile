FROM sonarqube
MAINTAINER Ben Cochez <ben@cochez.consulting>

# https://github.com/SonarSource/sonar-update-center-properties/
ENV SONAR_JAVA_PLUGIN 5.14.0.18788
ADD https://binaries.sonarsource.com/Distribution/sonar-java-plugin/sonar-java-plugin-${SONAR_JAVA_PLUGIN}.jar /opt/download/

ENV SONAR_SCM_GIT_PLUGIN 1.9.0.1725
ADD https://binaries.sonarsource.com/Distribution/sonar-scm-git-plugin/sonar-scm-git-plugin-${SONAR_SCM_GIT_PLUGIN}.jar /opt/download/

ENV SONAR_KOTLIN_PLUGIN 1.5.0.315
ADD https://binaries.sonarsource.com/Distribution/sonar-kotlin-plugin/sonar-kotlin-plugin-${SONAR_KOTLIN_PLUGIN}.jar /opt/download/

ENV SONAR_TYPESCRIPT_PLUGIN 1.9.0.3766
ADD https://binaries.sonarsource.com/Distribution/sonar-typescript-plugin/sonar-typescript-plugin-${SONAR_TYPESCRIPT_PLUGIN}.jar /opt/download/

ENV SONAR_SOFTVIZ3D_PLUGIN 1.1.0
ADD https://github.com/stefanrinderle/softvis3d/releases/download/softvis3d-${SONAR_SOFTVIZ3D_PLUGIN}/sonar-softvis3d-plugin-${SONAR_SOFTVIZ3D_PLUGIN}.jar /opt/download/

ENV SONAR_CITY_MODEL_PLUGIN 3.7
ADD http://www.qalitax.com/descargas/product/sonar-city-model-plugin-${SONAR_CITY_MODEL_PLUGIN}.jar?customerSurnames=update-center&customerCompany=sonar-update-center&customerName=sonarqube&customerEmail=downloads@excentia.es /opt/download/
