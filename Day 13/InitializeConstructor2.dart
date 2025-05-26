class BankAccount{ 

  double? balance; 

  double? minbalance; 

  // constructor 

  BankAccount({this.balance,this.minbalance=100}); 

  void displayBankBalance() 

  { 

    print("Minimum Balance:${minbalance} Balance: ${balance}"); 

  } 

} 

  

void main() 

{ 

  var obj=BankAccount(balance: 10000,minbalance: 1000); 

  obj.displayBankBalance(); 

} 