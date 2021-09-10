import 'logger.dart';
import 'password.dart';

void main(List<String> arguments) {
  final pass = Password()..value = 'Akindeley';

  Log.out(pass.toString());
  Log.out('${pass.isValid()}');
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
