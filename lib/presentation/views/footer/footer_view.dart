import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:flutter/material.dart';

class FooterView extends StatelessWidget {
  const FooterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextStyle? style = theme.textTheme.bodyText1?.copyWith(
      fontFamily: 'SourceSansPro',
      color: theme.colorScheme.primary,
    );

    return Center(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .3,
          ),
          Text(
            Strings.copyright,
            textAlign: TextAlign.center,
            style: style?.copyWith(
              color: theme.colorScheme.secondary,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: Sizes.marginDefault,
            ),
            child: Text(
              Strings.createdWithFlutter,
              style: style,
            ),
          ),
        ],
      ),
    );
  }
}
