import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:flutter/material.dart';

class FooterView extends StatelessWidget {
  const FooterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Center(
      child: Column(
        children: [
          Text(
            Strings.copyright,
            style: theme.textTheme.bodyText1,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: Sizes.marginDefault,
            ),
            child: Text(
              Strings.createdWithFlutter,
              style: theme.textTheme.bodyText1,
            ),
          ),
        ],
      ),
    );
  }
}
