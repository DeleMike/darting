import 'logger.dart';
import 'password.dart';
import 'user.dart';

void main(List<String> arguments) {
  final user = User.michael();
  final json = user.toJson();
  final deserializedUser = User.fromJson(json);
  Log.out(deserializedUser.toString());

  //SAMPLE
  final password = Password();
  password.value = 'kjhsdhaklgiu18922uaskbk*292';
  String va = password.value;
}
