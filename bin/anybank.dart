void main() {
  var contaMatheus = Conta("Matheus", 1000);
  var contaRoberta = Conta("Roberta", 5000);
}

class Conta {
  String owner;
  double balance;

  Conta(this.owner, this.balance);
}
