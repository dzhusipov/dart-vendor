import 'message.dart';
import 'user.dart';

class CallbackQuery {
  String id;
  User from;
  Message message;
  String inline_message_id;
  String data;

  CallbackQuery(
    this.id,
    this.from,
    this.message,
    this.inline_message_id,
    this.data,
  );
}
