class Parameters {
  int? migrate_to_chat_id;

  Parameters(this.migrate_to_chat_id);

  Parameters.fromJson(Map<String, dynamic> json) {
    migrate_to_chat_id = json['migrate_to_chat_id'];
  }
}
