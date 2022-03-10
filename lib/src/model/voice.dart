class Voice {
  late String file_id;
  late int duration;
  late String mime_type;
  late int file_size;

  Voice(
    this.file_id,
    this.duration,
    this.mime_type,
    this.file_size,
  );

  Voice.fromJson(Map<String, dynamic> json) {
    file_id = json['file_id'];
    duration = json['duration'];
    mime_type = json['mime_type'];
    file_size = json['file_size'];
  }
}
