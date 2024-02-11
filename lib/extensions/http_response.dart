import 'package:http/http.dart' as http;

extension HTTPResponse on http.Response {
  bool get ok {
    return (statusCode ~/ 100) == 2;
  }
}
