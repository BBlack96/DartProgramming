void main() {
  List<String> dataBase = ["ТОВ Фенікс", "ВАТ Метсбут", "ПП Іванов", "ВАТ Шаурма",
  "ВАТ Меблі", "ТОВ АТБ", "ФОП Ромашка", "ПАТ Едем", "ТОВ Комфі", "ПАТ Ашан"];

  String companyShouldBeChanged = "ВАТ Шаурма"; // Тут задаємо компанію яку треба змінити
  String newCompanyName = "ВАТ Пиріжки"; // Тут задаємо нову назву компанії

  for (var item in dataBase) {
    if (item == companyShouldBeChanged) {
      var currentCompany = dataBase.indexOf(companyShouldBeChanged);
      dataBase[currentCompany] = newCompanyName;
        }
      }

  print(dataBase);
}