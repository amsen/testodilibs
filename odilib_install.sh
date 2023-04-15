ODI_HOME=/Users/aksengup/apps/odiHome

mvn install:install-file -Dfile=$ODI_HOME/odi/sdk/lib/odi-core.jar -DgroupId=oracle.odi -DartifactId=odi-core -Dversion=12.2.1.4 -Dpackaging=jar -DgeneratePom=true