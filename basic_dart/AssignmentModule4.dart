abstract class Account{
  int accountNumber;
  double balance;
  Account(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
    print("Deposited: $amount, New balance: $balance");
  }

  void withdraw (double amount);

}

class SavingsAccount extends Account{

  double interestRate;

  SavingsAccount(super.accountNumber, super.balance, this.interestRate );

  void withdraw(double amount){

    if(amount<=balance){
      balance-=amount;
      balance+=balance*interestRate;
      print("Withdrawn: $amount, New Balance $balance");
    }
    else {
      print("Insufficient balance");
    }

  }
}

class CurrentAccount extends Account{
  double overdraftLimit;

  CurrentAccount(super.accountNumber,super.balance,this.overdraftLimit);
  void withdraw(double amount){

    if(amount-overdraftLimit<=balance){
      balance-=amount;
      print("Withdrawn: $amount , New balance: $balance");
    }
    else{
      print("Insufficient balance");
    }

  }

}

void main(){
  SavingsAccount savingsaccount = SavingsAccount(12345,50000,0.09);
  savingsaccount.deposit(10000);
  savingsaccount.withdraw(3000);

  CurrentAccount currentaccount = CurrentAccount(67891,10000,500);
  currentaccount.deposit(2000);
  currentaccount.withdraw(1000);
}