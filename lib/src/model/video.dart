import 'photo_size.dart';

class Video {
  late String file_id;
  late int width;
  late int height;
  late int duration;
  PhotoSize? thumb;
  late String mime_type;
  late int file_size;

  Video(this.file_id, this.width, this.height, this.duration, this.thumb,
      this.mime_type, this.file_size);

  Video.fromJson(Map<String, dynamic> json) {
    file_id = json['file_id'];
    width = json['width'];
    height = json['height'];
    duration = json['duration'];
    thumb = json['thumb'] != null ? PhotoSize.fromJson(json['thumb']) : null;
    mime_type = json['mime_type'];
    file_size = json['file_size'];
  }
}
