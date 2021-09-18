void main(List<String> arguments) {
  // final jane = Student('Jane', 'Snow');
  // final jessie = SchoolBandMember('Jessie', 'Jones');
  // final marty = StudentAthlete('Marty', 'McFly');

  // final students = [jane, jessie, marty];

  // final Animal platypus = Platypus();
  // print(platypus.isActive);
  // platypus.eat();
  // platypus.move();
  // // platypus.layEggs();
  // print(platypus);

  // final server = FakeWebServer();
  // server.fetchTemperature('');

  // final soda = Bottle();
  // soda.open();

  // final calc = Calculator();
  // calc.sum(10, 5);

  // final secret = 'abc'.encoded;
  // print(secret);
  // final msg = secret.decoded;
  // print(msg);

  final list = [
    Platypus(12),
    Platypus(100),
    Platypus(10),
    Platypus(2),
    Platypus(200),
    Platypus(24),
    Platypus(8)
  ];
  list.sort((Platypus p, Platypus x) => p.weight.compareTo(x.weight));
  print(list);
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

class Platypus extends Animal implements Comparable {
  int weight;
  Platypus(this.weight);

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

  @override
  int compareTo(otherAnimal) {
    return weight;
  }

  @override
  String toString() {
    return "I'm a Platypus with weight of $weight";
  }
}

abstract class DataRepository {
  double? fetchTemperature(String city);
  factory DataRepository() => FakeWebServer();
}

class FakeWebServer implements DataRepository {
  @override
  double? fetchTemperature(String city) {
    return 42.0;
  }
}

abstract class Bottle {
  ///return a SodaBottle
  factory Bottle() => SodaBottle();

  ///open the bottle
  void open();
}

class SodaBottle implements Bottle {
  @override
  void open() {
    print('Fizz Fizz');
  }
}

class Calculator with Adder {}

mixin Adder {
  void sum(int a, int b) => print(a + b);
}

extension on String {
  String get encoded => _convert(1);

  String get decoded => _convert(-1);

  String _convert(int pos) {
    final output = StringBuffer();
    for (final codePoint in runes) {
      output.writeCharCode(codePoint - pos);
    }
    return output.toString();
  }
}
