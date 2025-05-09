class customer{
    String name;
    String bnk_name;
      customer(String name,String bnk_name){
          this.name = name;
          this.bnk_name=bnk_name;
      }

      void dispCustDetails(bank b){
          System.out.println("cust name : "+name+" bnk_name : "+bnk_name);
          System.out.println("ifsc : "+b.ifsc+" balance : "+b.balance+" ");
      }
}
class bank{
    String ifsc;
    int balance;
    bank(String ifsc, int balance){
       this.ifsc= ifsc;
       this.balance =balance;
    }

    // void BankDetails(){
    //     System.out.print("ifsc : "+ifsc+" balance : "+balance);
    // }

}

public class demoAggre {
    public static void main(String[] args) {
    customer cst = new customer("Babu","union bank");
    bank bnk = new bank("24783hfd98r",353634);
    cst.dispCustDetails(bnk);

 
    }

}
