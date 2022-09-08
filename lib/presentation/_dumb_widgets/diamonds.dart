import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Diamonds extends StatelessWidget {
  const Diamonds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Size size = MediaQuery.of(context).size;

    return Image.asset(
      '${kDebugMode ? Strings.debugImagePrefix : Strings.releaseImagePrefix}geometric/diamonds.png',
      color: theme.colorScheme.primary.withOpacity(.5),
      height: size.height * .65,
    );
  }
}
