import 'dart:io';

void main(List<String> arguments) {
  // play();
  stream();
}

void play() {
  final myFuture = Future<int>.delayed(Duration(seconds: 1), () => 42)
      .then((value) => print('Value: $value'))
      .catchError((error) => print('Error: $error'))
      .whenComplete(() => print('Future has completed'));
}

Future<void> stream() async {
  // final file = File('assets/text.txt');
  // final contents = await file.readAsString();
  // print(contents);

  // //create a new file
  // final newFile = File('assets/text_long.txt');
  // //newFile.openWrite(mode: FileMode.append);

  // for (var i = 0; i < 1000; i++) {
  //   await newFile.writeAsString(contents, mode: FileMode.append);
  // }
  // print('done')
  //
  //
  // ;

  final file = File('assets/text_long.txt');
  final stream = file.openRead();
  stream.listen((data) {
    print(data);
  });
}
