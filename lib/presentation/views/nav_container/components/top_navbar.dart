import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:flutter/material.dart';

class TopNavbar extends StatelessWidget {
  const TopNavbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: Sizes.marginDefault,
        horizontal: Sizes.marginDefaultDouble,
      ),
      child: Row(
        children: [
          Text(
            'CI',
            style: theme.textTheme.headline1,
          ),
          const Spacer(),
          Text('Nav Container'),
        ],
      ),
    );
  }
}
