From fraunhoferiosb/frost-server-http:2.0.0

COPY data ${CATALINA_HOME}/webapps/FROST-Server/WEB-INF/data

ENV plugins_modelLoader_enable=true
ENV plugins_modelLoader_modelPath=webapps/FROST-Server/WEB-INF/data/model
ENV plugins_modelLoader_modelFiles=op_constraint.json,op_contextobject.json,op_matrix.json,op_ooi.json,op_property.json
ENV plugins_modelLoader_liquibasePath=../data/liquibase
ENV plugins_modelLoader_liquibaseFiles=tables.xml

USER tomcat

