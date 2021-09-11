import 'logger.dart';
import 'password.dart';
import 'user.dart';
import 'my_singleton.dart';

void main(List<String> arguments) {
  final user = User.michael();
  final json = user.toJson();
  final deserializedUser = User.fromJson(json);
  Log.out(deserializedUser.toString());

  //SAMPLE
  final singler = MySingleton.instance;
  
}
