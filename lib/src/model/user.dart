class User {
  late int id;
  late String first_name;
  late String last_name;
  late String username;

  User(this.id, this.first_name, this.last_name, this.username);

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    first_name = json['first_name'];
    last_name = json['last_name'];
    username = json['username'];
  }
}
