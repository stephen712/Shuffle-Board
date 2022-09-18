public class Fitness {
    public static Decimal calculateBMI(Decimal weight, Decimal height){
        if(weight <0 || height <=0)
        {
            return -1;
        }
        Decimal bmi =  weight/(height*height);
        Decimal result = bmi.setScale(2);
        return result;
    }
    public static Decimal calculatePace(Decimal kiloms, Decimal minutes){
        Decimal hr = minutes/60;
        Decimal speed =  kiloms/hr;
        Decimal result = speed.setScale(2);
        return result;
    }
}