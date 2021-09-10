class Log {
  static void out(String message, {String? tag}) {
    tag != null
        ? print('Tag: $tag, Message: $message')
        : print('Message: $message');
  }
}
