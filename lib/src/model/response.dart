import 'parameters.dart';
import 'update.dart';

class Response {
  bool? ok;
  int? error_code;
  String? description;
  List<dynamic>? result;
  Parameters? parametes;

  Response(
      this.ok, this.error_code, this.description, this.result, this.parametes);

  Response.fromJson(Map<String, dynamic> json) {
    ok = json['ok'];
    error_code = json['error_code'];
    description = json['description'];
    result = json['result'];
    parametes = json['parametes'] != null
        ? Parameters.fromJson(json['parametes'])
        : null;
  }

  @override
  String toString() {
    return 'Response{ok: $ok, error_code: $error_code, description: $description, result: $result, parametes: $parametes}';
  }
}
