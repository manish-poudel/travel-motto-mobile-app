import 'package:url_launcher/url_launcher.dart';

class LauncherUtils {
  static launchWebsite({required String url}) async {
    var uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }
}
