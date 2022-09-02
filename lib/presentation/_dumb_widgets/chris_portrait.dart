import 'package:flutter/material.dart';

class ChrisPortrait extends StatelessWidget {
  const ChrisPortrait({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'images/portraits/chris-masked.png',
    );
  }
}
