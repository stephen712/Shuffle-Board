public class pizza_amount {
final Integer oneSlice = 8;
final Integer uptoThreeSlice = 7;
final Integer fourorMore = 6;    
    
    public Integer getBill(Integer num){
        Integer billAmount = num == 1? oneSlice*num:(num<=3?uptoThreeSlice*num:num*fourorMore);
        return billAmount;
    }
    
}