void main() {
  var accountMatheus = Account("Matheus", 1000);
  var accountRoberta = Account("Roberta", 2000);
  var contas = <Account>[accountMatheus, accountRoberta];
  for (var conta in contas) {
    print(conta.owner);
    print(conta.balance);
  }
  accountRoberta.transferMoney(accountMatheus, 500);
  print(accountMatheus.balance);
  accountMatheus.transferMoney(accountMatheus, 100);
  print(accountRoberta.balance);
}

class Account {
  String owner;
  double balance;

  Account(this.owner, this.balance);
  
  void transferMoney(Account accountDestiny, double value) {
    if (value > balance){
      print("Could not realize this action because the request value is greater than balance");
      return;
    }
    accountDestiny.balance += value;
    balance -= value;
    return;
  }
}
