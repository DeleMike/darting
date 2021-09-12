class Student {
  final String? firstName;
  final String? lastName;
  int? grade = 0;

  Student({String? firstName, String? lastName, int? grade})
      : assert(grade! > 0),
        firstName = firstName,
        lastName = lastName,
        grade = grade;

  String printStudentGrade() {
    return 'Name: $firstName $lastName, \nGrade: $grade';
  }
}
