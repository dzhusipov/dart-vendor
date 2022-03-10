import 'location.dart';
import 'user.dart';

class ChosenInlineResult {
  String result_id;
  User from;
  Location location;
  String inline_message_id;
  String query;

  ChosenInlineResult(this.result_id, this.from, this.location,
      this.inline_message_id, this.query);
}
