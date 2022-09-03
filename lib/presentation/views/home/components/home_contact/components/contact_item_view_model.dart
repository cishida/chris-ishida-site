import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactItemViewModel extends BaseViewModel {
  bool _isHovering = false;

  bool get isHovering => _isHovering;

  void onEnter() {
    _isHovering = true;
    notifyListeners();
  }

  void onExit() {
    _isHovering = false;
    notifyListeners();
  }

  Future<void> onTap(String link) async {
    if (link.isEmpty) {
      Clipboard.setData(
        const ClipboardData(
          text: Strings.email,
        ),
      );
    } else {
      final Uri url = Uri.parse(link);
      if (!await launchUrl(url)) {
        throw 'Could not launch $url';
      }
    }
  }
}
