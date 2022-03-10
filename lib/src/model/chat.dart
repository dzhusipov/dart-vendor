class Chat {
  late int id;
  late String type;
  late String title;
  late String username;
  late String first_name;
  late String last_name;
  late bool all_members_are_administrators;

  Chat(this.id, this.type, this.title, this.username, this.first_name,
      this.last_name, this.all_members_are_administrators);

  Chat.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    title = json['title'];
    username = json['username'];
    first_name = json['first_name'];
    last_name = json['last_name'];
    all_members_are_administrators = json['all_members_are_administrators'];
  }
}
