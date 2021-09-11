import 'logger.dart';
import 'password.dart';
import 'user.dart';

void main(List<String> arguments) {
  final user = User(id: -21, name: 'Mike');
  Log.out(user.toString());
}
