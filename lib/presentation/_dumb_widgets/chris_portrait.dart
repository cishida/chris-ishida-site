import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ChrisPortrait extends StatelessWidget {
  const ChrisPortrait({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      '${kDebugMode ? Strings.debugImagePrefix : Strings.releaseImagePrefix}portraits/chris-masked.png',
    );
  }
}
