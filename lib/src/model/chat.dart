class Chat {
  int id;
  String type;
  String title;
  String username;
  String first_name;
  String last_name;
  bool all_members_are_administrators;

  Chat(
      {required this.id,
      required this.type,
      required this.title,
      required this.username,
      required this.first_name,
      required this.last_name,
      required this.all_members_are_administrators});
}
