@isTest
public class Covid19test {

    @isTest
    public static void treatPatientTest(){
       Covid19 jaipur = new Covid19(8);
       Integer value =  jaipur.getTreated();
        System.assertEquals(8, value, 'test failed');
        
        
        Covid19 hyd = new Covid19(89);
        System.assertEquals(89, hyd.getTreated(), 'test failed');
        System.assertEquals(97, Covid19.recoveredInCountry, 'test failed');
        
        jaipur.treatPatient();
        value =  jaipur.getTreated();
       
        System.assert(Covid19.recoveredInCountry == 98);
        System.assert(value == 9);
            }
}