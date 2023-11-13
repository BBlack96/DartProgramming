void main() {
  String name = "Богдан";
  String lastName = "Чорний";
  List<Comment>? comments = [
    Comment("Геральт", "із Ривії", "Ворушись, Плотва!", "12-11-2023"),
    Comment("Джон", "Сноу", "Зима близько", "11-11-2023"),
  ];
  Reactions? reactions = Reactions("5", "10", "15");

  UserData userData = UserData(name, lastName, comments, reactions);

  userData.displayUserData();
}

class Comment {
  String authorName;
  String authorLastName;
  String text;
  String date;

  Comment(this.authorName, this.authorLastName, this.text, this.date);
}

class Reactions {
  String? thumbsUp;
  String? oks;
  String? hearts;

  Reactions(this.thumbsUp, this.oks, this.hearts);

  int get totalReactions {
    return (int.parse(thumbsUp ?? '0') +
        int.parse(oks ?? '0') +
        int.parse(hearts ?? '0'));
  }
}

class UserData {
  String name;
  String lastName;
  List<Comment>? comments;
  Reactions? reactions;

  UserData(this.name, this.lastName, this.comments, this.reactions);

  void displayUserData() {
    print("Ім'я: $name");
    print('Прізвище: $lastName');

    if (comments != null) {
      print('Коментарі:');
      for (var comment in comments!) {
        print('Автор: ${comment.authorName} ${comment.authorLastName}');
        print('Текст: ${comment.text}');
        print('Дата: ${comment.date}');
      }
    } else {
      print('Немає коментарів');
    }

    if (reactions != null) {
      print('Всього реакцій: ${reactions!.totalReactions}');
    } else {
      print('Немає реакцій');
    }
  }
}


