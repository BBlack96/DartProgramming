void main() {
  // Завдання 1.1
    for (var i = 0; i <= 45 ; i++) {
        print(i);
      }
  // Завдання 1.2
  double startDeposit = 1000;
  double deposit = startDeposit;
  int years = 0;
  while(deposit < startDeposit*2){
    deposit *= 1.05;
    years++;
  }

  print("Сума вашого депозиту складає ${deposit.round()} за $years років");
}