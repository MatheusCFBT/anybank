void main() {
  var contaMatheus = Conta("Matheus", 1000);
  var contaRoberta = Conta("Roberta", 2000);
  var contas = <Conta>[contaMatheus, contaRoberta];
  for (var conta in contas) {
    print(conta.owner);
    print(conta.balance);
  }
  contaRoberta.balance = 5000;
  print(contaRoberta.balance);
}

class Conta {
  String owner;
  double balance;

  Conta(this.owner, this.balance);
}
