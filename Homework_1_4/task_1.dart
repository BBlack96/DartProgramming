void main() {
  Human firstHuman = Human("Daria", 10, 100);
  Human secondHuman = Human("Oleg", 15, 140);
  firstHuman.growth();
  firstHuman.changeName("Mariya");
  print(firstHuman.name);
  secondHuman.growth();
  secondHuman.changeName("Dave");
  print(secondHuman.name);
}

class Human {
  String name = "";
  int age = 0;
  int height = 0;

  Human(this.name, this.age, this.height);

  String changeName(String newName) {
    return name = newName;
  }

  void growth() {
    print(
        "Людина на ім'я $name зараз $age років, та її зріст складає $height см.");
    while (age < 96) {
      age++;
      if (age < 12) {
        height += 8;
        print(
            "Людина на ім'я $name зараз $age років, та її зріст складає $height см.");
      }
      else if (age <= 25) {
        height += 3;
        print("Людина на ім'я $name зараз $age років, та її зріст складає $height см.");
      }
      else if (age < 60) {
        print(
            "Поки вік $name менше 60-ти років, зріст не змінюється, зараз їй $age років");
      } else {
        height -= 2;
        print(
            "$name вже старенька, їй $age років, її зріст зменшується, зараз він складає $height см");
      }
    }
  }
}
