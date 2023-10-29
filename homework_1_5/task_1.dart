void main() {
  Document defaultDocument = Document('Default text', "Default title");
  defaultDocument.printDocument();
  defaultDocument.saveFile();
  dateDocument secondDocument = dateDocument("Second doc text", "Second title", "28.10");
  secondDocument.printDocument();
  secondDocument.saveFile();
  signedDateDocument thirdDocument = signedDateDocument("Third Text", "Third title", "28.10", "My sign");
  thirdDocument.printDocument();
  thirdDocument.saveFile();
}

class Document {
  String text = '';
  String title = '';

  Document(this.text, this.title);

  void printDocument(){
    print("$text\n$title");
  }

  void saveFile() {
    print("File saved\n");
  }
}

class dateDocument extends Document {
  String date = 'date';

  dateDocument(text, title, this.date) : super(text, title);

  @override
  void printDocument() {
    super.printDocument();
    print("$date");
  }
}

class signedDateDocument extends dateDocument {
  String sign = 'sign';

  signedDateDocument(text, title, date, this.sign) : super(text, title, date);

  @override
  void printDocument() {
    super.printDocument();
    print("$sign");
  }
}
