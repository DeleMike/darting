class Password {
  String value = '';

  bool isValid() => value.length > 8;

  @override
  String toString() => '$value';
}
