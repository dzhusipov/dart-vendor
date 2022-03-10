class PhotoSize {
  late String file_id;
  late int width;
  late int height;
  late int file_size;

  PhotoSize(this.file_id, this.width, this.height, this.file_size);

  PhotoSize.fromJson(Map<String, dynamic> json) {
    file_id = json['file_id'];
    width = json['width'];
    height = json['height'];
    file_size = json['file_size'];
  }
}
