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

void stream() {}
