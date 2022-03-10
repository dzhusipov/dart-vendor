import 'dart:convert';

import 'photo_size.dart';

class Sticker {
  late String file_id;
  late int width;
  late int height;
  PhotoSize? thumb;
  late int file_size;

  Sticker(
    this.file_id,
    this.width,
    this.height,
    this.thumb,
    this.file_size,
  );

  Sticker.fromJson(Map<String, dynamic> json) {
    file_id = json['file_id'];
    width = json['width'];
    height = json['height'];
    thumb = json['thumb'] != null ? PhotoSize.fromJson(json['thumb']) : null;
    file_size = json['file_size'];
  }

  @override
  String toString() {
    return 'Sticker(file_id: $file_id, width: $width, height: $height, thumb: $thumb, file_size: $file_size)';
  }
}
