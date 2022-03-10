import 'location.dart';
import 'user.dart';

class ChosenInlineResult {
  String? result_id;
  User? from;
  Location? location;
  String? inline_message_id;
  String? query;

  ChosenInlineResult(this.result_id, this.from, this.location,
      this.inline_message_id, this.query);

  ChosenInlineResult.fromJson(Map<String, dynamic> json) {
    result_id = json['result_id'];
    from = json['from'] != null ? User.fromJson(json['from']) : null;
    location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
    inline_message_id = json['inline_message_id'];
    query = json['query'];
  }
}
