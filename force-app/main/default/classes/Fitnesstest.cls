@isTest
public class Fitnesstest {
    
    @isTest
    public static void bmiTest1(){
        
        Decimal value1 = Fitness.calculateBMI(3.2,6.5);
        System.assertEquals(value1, 0.08, 'test fails');
    }
    
     @isTest
    public static void bmiTest2(){
        
        Decimal value1 = Fitness.calculateBMI(0,6.5);
        System.assertEquals(value1, 0, 'test fails');
    }
    
    @isTest
    public static void bmiTest3(){
        
        Decimal value1 = Fitness.calculateBMI(0,-1);
        System.assertEquals(value1, -1, 'test fails');
    }
    
    @isTest
    public static void paceTest1(){
        
        Decimal value2 = Fitness.calculatePace(23.77, 45.77);
        
        System.assertEquals(value2, 31.16, 'test fails');  
    }
    
}