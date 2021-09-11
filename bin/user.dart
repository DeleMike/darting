///user class
class User {
  int _id;
  String _name;

  ///user class
  User({int id = 0, String name = 'Anon'})
      : assert(id >= 0),
        assert(name.isNotEmpty),
        _id = id,
        _name = name;

  User.anon() : this();

  factory User.michael() {
    return User(id: 2, name: 'Michael');
  }

  ///deseliarize json
  factory User.fromJson(Map<String, Object> json) {
    return User(id: json['id'] as int, name: json['name'] as String);
  }

  ///serialize class
  Map<String, Object> toJson() {
    return {
      'id': _id,
      'name': _name,
    };
  }

  @override
  String toString() {
    return 'User(id: $_id, name: $_name)';
  }
}
