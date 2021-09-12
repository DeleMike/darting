class Log {
  static void out(String message, {String? tag}) {
    tag != null
        ? print('tag: $tag, msg: $message')
        : print('$message');
  }
}
