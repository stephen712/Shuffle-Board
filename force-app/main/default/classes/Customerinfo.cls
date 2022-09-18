public class Customerinfo {
    public String compName;
    public String ceo;
    public String employeecount;
    public Long revenue;
    
   //list of customers
   private List<Client> customers = new List<Client>();
    
    //add customers
    public void addCustomers(String userName,String email,String id,Long phone){
        Client customer = new Client(userName,email, id,phone);
        customers.add(customer);
    }
    public void getAllCustomers(){
        System.debug(customers);
    }
    
    private class Client{
   	public String userName;
    public String email;
    public String id;
    public Long phone;
       Client(String userName, String email, String id, Long phone){
            this.userName= userName;
            this.email  = email;
            this.id = id;
            this.phone = phone;
        }
    }
}