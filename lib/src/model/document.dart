import 'photo_size.dart';

class Document {
  late String file_id;
  PhotoSize? thumb;
  late String file_name;
  late String mime_type;
  late int file_size;

  Document(
      this.file_id, this.thumb, this.file_name, this.mime_type, this.file_size);

  Document.fromJson(Map<String, dynamic> json) {
    file_id = json['file_id'];
    thumb = json['thumb'] != null ? PhotoSize.fromJson(json['thumb']) : null;
    file_name = json['file_name'];
    mime_type = json['mime_type'];
    file_size = json['file_size'];
  }
}
