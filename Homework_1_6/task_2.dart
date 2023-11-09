import 'dart:math';

void main() {
  var firstLandArmy = [LandUnit(100, 10), LandUnit(1, 5), LandUnit(2, 1)];
  var secondLandArmy = [LandUnit(15, 10), LandUnit(5, 15), LandUnit(30, 25)];
  var firstWaterArmy = [WaterUnit(100), WaterUnit(15), WaterUnit(5)];
  var secondWaterArmy = [WaterUnit(10), WaterUnit(15), WaterUnit(5)];

  landBattleMode(firstLandArmy, secondLandArmy);
  waterBattleMode(firstWaterArmy, secondWaterArmy);
}

class Unit {
  int strength = 0;

  Unit(this.strength);

  bool battle() {
    return Random().nextBool();
  }
}

class LandUnit extends Unit {
  int defense = 0;

  LandUnit(int strength, this.defense) : super(strength);
}

class WaterUnit extends Unit {
  WaterUnit(int strength) : super(strength);
}

void landBattleMode(List<LandUnit> firstArmy, List<LandUnit> secondArmy) {
  int firstArmyStrength = firstArmy.map((unit) => unit.strength).reduce((a, b) => a + b);
  int secondArmyStrength = secondArmy.map((unit) => unit.strength).reduce((a, b) => a + b);
  int firstArmyDefense = firstArmy.map((unit) => unit.defense).reduce((a, b) => a + b);
  int secondArmyDefense = secondArmy.map((unit) => unit.defense).reduce((a, b) => a + b);

  bool firstAttack = Random().nextBool();
  bool secondAttack = Random().nextBool();

  print("Битва наземних армій починається\n");
  print("Перша армія: ${firstAttack ? 'Атака' : 'Захист'}");
  print("Друга армія: ${secondAttack ? 'Атака' : 'Захист'}");

  if (firstAttack && firstArmyStrength > secondArmyDefense) {
    print("Перша армія перемогла");
  }
  else if (!firstAttack && secondAttack && secondArmyStrength > firstArmyDefense) {
    print("Друга армія перемогла");
  }
  else if (!firstAttack && !secondAttack) {
    print("Бій не відбувся");
  }
  else {
    print("Нічия");
  }
}

void waterBattleMode(List<WaterUnit> firstArmy, List<WaterUnit> secondArmy) {
  int firstArmyStrength = firstArmy.map((unit) => unit.strength).reduce((a, b) => a + b);
  int secondArmyStrength = secondArmy.map((unit) => unit.strength).reduce((a, b) => a + b);

  print("Битва водяних армій починається\n");

  if (firstArmyStrength > secondArmyStrength) {
    print("Перша армія виграла");
  }
  else if (secondArmyStrength > firstArmyStrength) {
    print("Друга армія виграла");
  }
  else {
    print("Нічия");
  }
}

