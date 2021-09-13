void main(List<String> arguments) {
  print('Hello world!');
}

class Person {
  String givenName;
  String surname;

  Person(this.givenName, this.surname);

  String get fullName => '$givenName $surname';

  @override
  String toString() => fullName;
}

class Student {
  String givenName;
  String surname;
  var grades = [];

  Student(this.givenName, this.surname);

  String get fullName => '$givenName $surname';

  @override
  String toString() => fullName;
}
