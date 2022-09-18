public class class1{

private String hello = 'hello world';
public void printthis(){
System.debug(hello);
}
    public void hello_hi(String str){
        System.debug(str);
    }
    public String workday(Integer num){
        String str='';
        switch on num{
            when 0 {
                str ='monday';
            }
            when 2{
                str = 'tuesday';
            }
            when 3{
               str = 'wednesday';
            }
            when 4{
                str = 'thursday';
            }
            when 5{
                str = 'friday';
            }
            when 6{
                str = 'saturday';
            }
            when 7{
                str = 'sunday';
            }
            when else{
                str = 'no day';
            }
            
        }
        return str;
    }
}