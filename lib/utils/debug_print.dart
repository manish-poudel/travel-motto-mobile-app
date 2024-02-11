import 'package:flutter/foundation.dart';

debugPrint(String message) {
  if (kDebugMode) {
    print(message);
  }
}
