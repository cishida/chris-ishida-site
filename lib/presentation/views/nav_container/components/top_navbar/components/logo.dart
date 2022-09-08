import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final Function onTap;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => onTap(),
        child: Text(
          'CI',
          style: theme.textTheme.headline1?.copyWith(
            fontFamily: 'SourceSansPro',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
