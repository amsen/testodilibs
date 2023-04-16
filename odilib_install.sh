ODI_HOME=/Users/aksengup/apps/odiHome

mvn install:install-file -Dfile=$ODI_HOME/odi/sdk/lib/odi-core.jar -DgroupId=oracle.odi -DartifactId=odi-core -Dversion=12.2.1.4 -Dpackaging=jar -DgeneratePom=true
mvn install:install-file -Dfile=$ODI_HOME/odi/agent/lib/odi-standalone-agent.jar -DgroupId=oracle.odi -DartifactId=odi-standalone-agent -Dversion=12.2.1.4 -Dpackaging=jar -DgeneratePom=true
mvn install:install-file -Dfile=$ODI_HOME/oracle_common/modules/oracle.toplink/eclipselink.jar -DgroupId=oracle.toplink -DartifactId=eclipselink -Dversion=1.0.0 -Dpackaging=jar -DgeneratePom=true
mvn install:install-file -Dfile=$ODI_HOME/oracle_common/modules/oracle.jps/jps-api.jar -DgroupId=oracle.jps -DartifactId=jps-api -Dversion=1.0.0 -Dpackaging=jar -DgeneratePom=true
mvn install:install-file -Dfile=$ODI_HOME/oracle_common/modules/oracle.odl/ojdl.jar -DgroupId=oracle.odl -DartifactId=ojdl -Dversion=1.0.0 -Dpackaging=jar -DgeneratePom=true
mvn install:install-file -Dfile=$ODI_HOME/oracle_common/modules/oracle.idm/identitystore.jar -DgroupId=oracle.idm -DartifactId=identitystore -Dversion=1.0.0 -Dpackaging=jar -DgeneratePom=true