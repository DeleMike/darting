//CHALLENGE TWO
class Name {
  Name(this.givenName, this.surname, this.isSurnameFirst);

  String givenName;
  String? surname;
  bool isSurnameFirst = false;

  @override
  String toString() {
    String name;
    if (isSurnameFirst) {
      name = surname ?? '';
      name += ' ' + givenName;
    } else {
      name = givenName + ' ';
      name += surname ?? '';
    }

    return name;
  }
}
