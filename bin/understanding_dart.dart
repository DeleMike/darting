import 'logger.dart';

void main(List<String> arguments) {
  //cascade operator
  final user = User()
    ..id = 10
    ..name = 'Ayo';

  Log.out(user.toString());
  Log.out(user.toJson());
}

class User {
  int id = 0;
  String name = '';

  String toJson() {
    return "{'id': $id, 'name': $name,}";
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name)';
  }
}
