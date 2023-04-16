package am.odi;

import oracle.odi.core.OdiInstance;
import oracle.odi.core.config.MasterRepositoryDbInfo;
import oracle.odi.core.config.OdiInstanceConfig;
import oracle.odi.core.config.PoolingAttributes;
import oracle.odi.core.config.WorkRepositoryDbInfo;
import oracle.odi.core.security.Authentication;

public class OdiProcess {

    public static void main(String[] args) {
        String driver = "oracle.jdbc.OracleDriver";
        String sourceUrl = "jdbc:oracle:thin:@localhost:1521/odipdb.localdomain";
        String sourceSchema = "DEV_ODI_REPO";
        String sourceSchemaPwd = "Welcome1";
        String sourceWorkrep = "WORKREP";
        String sourceOdiUser = "SUPERVISOR";
        String sourceOdiUserPwd = "Welcome1";

        System.out.println("Hello world from odi process!!!!");

        MasterRepositoryDbInfo sourceMasterInfo = new MasterRepositoryDbInfo(sourceUrl, driver, sourceSchema, sourceSchemaPwd.toCharArray(), new PoolingAttributes());
        WorkRepositoryDbInfo sourceWorkInfo = new WorkRepositoryDbInfo(sourceWorkrep, new PoolingAttributes());

        OdiInstance sourceOdiInstance = OdiInstance.createInstance(new OdiInstanceConfig(sourceMasterInfo, sourceWorkInfo));
        Authentication sourceAuth= sourceOdiInstance.getSecurityManager().createAuthentication(sourceOdiUser, sourceOdiUserPwd.toCharArray());
        sourceOdiInstance.getSecurityManager().setCurrentThreadAuthentication(sourceAuth);
        System.out.println("Connected to Source! Yay!");


    }
}
