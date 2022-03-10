import 'message.dart';
import 'user.dart';

class CallbackQuery {
  String? id;
  User? from;
  Message? message;
  String? inline_message_id;
  String? data;

  CallbackQuery(
    this.id,
    this.from,
    this.message,
    this.inline_message_id,
    this.data,
  );

  CallbackQuery.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    from = json['from'] != null ? User.fromJson(json['from']) : null;
    message =
        json['message'] != null ? Message.fromJson(json['message']) : null;
    inline_message_id = json['inline_message_id'];
    data = json['data'];
  }
}
