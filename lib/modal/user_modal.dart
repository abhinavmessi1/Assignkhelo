class Users {
  String? name;
  int? rupee;
  DateTime? time;

  Users({this.name, this.rupee, this.time});

  factory Users.frommap(Map<String, dynamic> map) {
    return Users(name: map['name'], rupee: map['rupee'], time: map['time']);
  }
}
