import 'parameters.dart';
import 'update.dart';

class Response {
  String ok;
  int error_code;
  String description;
  List<Update> result;
  Parameters parametes;

  Response(
      {required this.ok,
      required this.error_code,
      required this.description,
      required this.result,
      required this.parametes});
}
