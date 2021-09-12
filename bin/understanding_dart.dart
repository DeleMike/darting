import 'dart:math';

import 'Name.dart';

void main(List<String> arguments) {
  //CHALLENGE ONE
  // var result = guessValue() ?? 0;
  // print('Answer is: $result');

//CHANLENGE TWO
  final name = Name('Akindele', null, false);
  print(name.toString());
}

//CHALLENGE ONE
// int? guessValue() {
//   const values = [42, null];
//   final r = Random();
//   return values[r.nextInt(2)];
// }
