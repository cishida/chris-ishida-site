import 'package:flutter/material.dart';

class Diamonds extends StatelessWidget {
  const Diamonds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Size size = MediaQuery.of(context).size;

    return Image.asset(
      'images/geometric/diamonds.png',
      color: theme.colorScheme.primary.withOpacity(.5),
      height: size.height * .65,
    );
  }
}
