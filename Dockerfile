FROM fraunhoferiosb/frost-server-http:2.4.0-SNAPSHOT

COPY data ${CATALINA_HOME}/webapps/FROST-Server/WEB-INF/data

ENV plugins_openApi_enable=true
ENV plugins_odata_enable=true
ENV plugins_csv_enable=true
ENV plugins_geojson_enable=true
ENV plugins_modelLoader_enable=true
ENV plugins_modelLoader_modelPath='/usr/local/tomcat/webapps/FROST-Server/WEB-INF/data/model'
ENV plugins_modelLoader_modelFiles='op_constraint.json,op_contextobject.json,op_matrix.json,op_ooi.json,op_property.json'
ENV plugins_modelLoader_liquibasePath='/usr/local/tomcat/webapps/FROST-Server/WEB-INF/data/liquibase'
ENV plugins_modelLoader_liquibaseFiles='tables.xml'

USER tomcat

