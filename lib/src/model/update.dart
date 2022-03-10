class Update {
  int update_id;
  Message message;
  InlineQuery inline_query;
  ChosenInlineResult chosen_inline_result;
  CallbackQuery callback_query;

  Update(Map<String, dynamic> map) {
    update_id = map['update_id'];
    message = map['message'] != null ? new Message(map['message']) : null;
    inline_query = map['inline_query'] != null
        ? new InlineQuery(map['inline_query'])
        : null;
    chosen_inline_result = map['chosen_inline_result'] != null
        ? new ChosenInlineResult(map['chosen_inline_result'])
        : null;
    callback_query = map['callback_query'] != null
        ? new CallbackQuery(map['callback_query'])
        : null;
  }
}
