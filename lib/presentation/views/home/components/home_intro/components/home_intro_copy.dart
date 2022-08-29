import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:flutter/material.dart';

class HomeIntroCopy extends StatelessWidget {
  const HomeIntroCopy({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return IntrinsicWidth(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Using triple spacers for alignment
          // without percentages
          // const Spacer(),
          Text(
            Strings.intro,
            textAlign: TextAlign.left,
            style: theme.textTheme.headline1?.copyWith(
              fontFamily: 'SourceSansPro',
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: Sizes.marginDefaultDouble,
              bottom: Sizes.marginDefaultDouble,
            ),
            child: Text(
              Strings.jobTitle,
              style: theme.textTheme.headline5,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: Sizes.marginDefaultQuad,
            ),
            child: Text(
              Strings.subtitle,
              style: theme.textTheme.headline6?.copyWith(
                color: theme.colorScheme.secondary,
              ),
            ),
          ),
          OutlinedButton(
            onPressed: () => onPressed(),
            style: OutlinedButton.styleFrom(
              side: BorderSide(
                width: 3.0,
                color: theme.colorScheme.primary,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Sizes.marginDefaultHalf,
                vertical: Sizes.marginDefault,
              ),
              child: Text(
                Strings.homeContact.toUpperCase(),
                style: theme.textTheme.button?.copyWith(
                  fontSize: 22.0,
                  color: theme.colorScheme.primary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
