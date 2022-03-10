import 'location.dart';
import 'user.dart';

class InlineQuery {
  String? id;
  User? from;
  Location? location;
  String? query;
  String? offset;

  InlineQuery(
    this.id,
    this.from,
    this.location,
    this.query,
    this.offset,
  );

  InlineQuery.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    from = json['from'] != null ? User.fromJson(json['from']) : null;
    location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
    query = json['query'];
    offset = json['offset'];
  }
}
