import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class UrlLauncherUtils {
  static Future<void> openUrl(String? url) async {
    if (url == null) {
      // UiHelper.errorSnackbar();
      return;
    }
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      // UiHelper.errorSnackbar();
    }
  }

  static Future<void> launchMail(String mail) async {
    final uri = Uri(
      scheme: 'mailto',
      path: mail,
    );
    await launchUrl(uri);
  }

  static Future<void> launchContact(String contact) async {
    final numbers = contact.split(',');
    if (numbers.isNotEmpty) {
      final number = numbers[0];
      final uri = Uri(
        scheme: 'tel',
        path: number,
      );
      await launchUrl(uri);
    }
  }

  static Future<void> launchSMS(String contact) async {
    final numbers = contact.split(',');
    if (numbers.isNotEmpty) {
      final number = numbers[0];
      final uri = Uri(
        scheme: 'sms',
        path: number,
      );
      await launchUrl(uri);
    }
  }
}
