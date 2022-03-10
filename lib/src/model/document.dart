import 'photo_size.dart';

class Document {
  String file_id;
  PhotoSize thumb;
  String file_name;
  String mime_type;
  int file_size;

  Document(
      {required this.file_id,
      required this.thumb,
      required this.file_name,
      required this.mime_type,
      required this.file_size});
}
