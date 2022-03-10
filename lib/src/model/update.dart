import 'callback_query.dart';
import 'chosen_inline_result.dart';
import 'inline_query.dart';
import 'message.dart';

class Update {
  late int update_id;
  Message? message;
  InlineQuery? inline_query;
  ChosenInlineResult? chosen_inline_result;
  CallbackQuery? callback_query;

  Update(
    this.update_id,
    this.message,
    this.inline_query,
    this.chosen_inline_result,
    this.callback_query,
  );

  Update.fromJson(Map<String, dynamic> json) {
    update_id = json['update_id'];
    message =
        json['message'] != null ? Message.fromJson(json['message']) : null;
    inline_query = json['inline_query'] != null
        ? InlineQuery.fromJson(json['inline_query'])
        : null;
    chosen_inline_result = json['chosen_inline_result'] != null
        ? ChosenInlineResult.fromJson(json['chosen_inline_result'])
        : null;
    callback_query = json['callback_query'] != null
        ? CallbackQuery.fromJson(json['callback_query'])
        : null;
  }
}
