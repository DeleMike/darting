void main(List<String> arguments) {
  // final jane = Student('Jane', 'Snow');
  // final jessie = SchoolBandMember('Jessie', 'Jones');
  // final marty = StudentAthlete('Marty', 'McFly');

  // final students = [jane, jessie, marty];

  final Animal platypus = Platypus();
  print(platypus.isActive);
  platypus.eat();
  platypus.move();
  // platypus.layEggs();
  print(platypus);
}

enum Grade { A, B, C, D, E, F }

class Person {
  String givenName;
  String surname;

  Person(this.givenName, this.surname);

  String get fullName => '$givenName $surname';

  @override
  String toString() => fullName;
}

class Student extends Person {
  Student(String givenName, String surname) : super(givenName, surname);

  var grades = <Grade>[];
}

class SchoolBandMember extends Student {
  SchoolBandMember(String givenName, String surname)
      : super(givenName, surname);
  static const minimumPracticeTime = 2;
}

class StudentAthlete extends Student {
  StudentAthlete(String givenName, String surname) : super(givenName, surname);

  bool get isEligible => grades.every((grade) => grade != Grade.F);
}

abstract class Animal {
  bool isActive = true;
  void eat();
  void move();

  @override
  String toString() {
    return "I'm a $runtimeType";
  }
}

class Platypus extends Animal {
  @override
  void eat() {
    print('munch munch');
  }

  @override
  void move() {
    print('Glide Glide');
  }

  void layEggs() {
    print('Plop plop');
  }
}
