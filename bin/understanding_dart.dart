import 'logger.dart';
import 'sphere.dart';
import 'student.dart';

void main(List<String> arguments) {
  // final user = User.michael();
  // final json = user.toJson();
  // final deserializedUser = User.fromJson(json);
  // Log.out(deserializedUser.toString());

  //SAMPLE
  // final singler = MySingleton();
  // final singler2 = MySingleton();

  // if (singler == singler2) {
  //   Log.out('true: same object');
  // } else {
  //   Log.out('false: not same object');
  // }

  //CHALLENGE 1
  // final studentA = Student(firstName: 'Bert', lastName: 'X', grade: 95);
  // final studentB = Student(firstName: 'Ernie', lastName: 'X', grade: 85);

  // Log.out(studentA.printStudentGrade());
  // Log.out(studentB.printStudentGrade());

  //CHALLENGE 2
  final sphere = Sphere(radius: 12);
  Log.out('Volume of sphere: ${sphere.volume}');
  Log.out('Surface Area of sphere: ${sphere.surfaceArea}');
}
