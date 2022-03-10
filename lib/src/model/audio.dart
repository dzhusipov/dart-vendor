class Audio {
  String file_id;
  int duration;
  String performer;
  String title;
  String mime_type;
  int file_size;

  Audio(
      {required this.file_id,
      required this.duration,
      required this.performer,
      required this.title,
      required this.mime_type,
      required this.file_size});
}
