import 'dart:async';

import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactItemViewModel extends BaseViewModel {
  bool _isHovering = false;
  bool _didCopy = false;
  late Timer _timer = Timer(const Duration(milliseconds: 0), () {});

  bool get isHovering => _isHovering;
  bool get didCopy => _didCopy;

  String getText() {
    if (_didCopy) {
      return Strings.copiedToClipboard;
    }

    if (_isHovering) {
      return Strings.copyToClipboard;
    }

    return '';
  }

  void onEnter() {
    _isHovering = true;
    notifyListeners();
  }

  void onExit() {
    _isHovering = false;
    notifyListeners();
  }

  void _setDidCopy() {
    _didCopy = true;
    notifyListeners();

    if (_timer.isActive) {
      _timer.cancel();
    }
    _timer = Timer(
      const Duration(seconds: 1),
      () {
        _didCopy = false;
        notifyListeners();
      },
    );
  }

  Future<void> onTap(String link) async {
    if (link.isEmpty) {
      Clipboard.setData(
        const ClipboardData(
          text: Strings.email,
        ),
      );
      _setDidCopy();
    } else {
      final Uri url = Uri.parse(link);
      if (!await launchUrl(url)) {
        throw 'Could not launch $url';
      }
    }
  }
}
