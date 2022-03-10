class Audio {
  late String file_id;
  late int duration;
  late String performer;
  late String title;
  late String mime_type;
  late int file_size;

  Audio(this.file_id, this.duration, this.performer, this.title, this.mime_type,
      this.file_size);

  Audio.fromJson(Map<String, dynamic> json) {
    file_id = json['file_id'];
    duration = json['duration'];
    performer = json['performer'];
    title = json['title'];
    mime_type = json['mime_type'];
    file_size = json['file_size'];
  }
}
