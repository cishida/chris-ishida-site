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

    return Stack(
      children: [
        Positioned(
          right: 0.0,
          top: 180.0,
          child: Image.asset(
            'images/geometric/diamonds.png',
            width: 500.0,
            color: theme.colorScheme.primary.withOpacity(.2),
          ),
        ),
        Center(
          child: IntrinsicWidth(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Using triple spacers for alignment
                // without percentages
                // const Spacer(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    Strings.intro,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.headline3,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: Sizes.marginDefaultDouble,
                      bottom: Sizes.marginDefaultDouble,
                    ),
                    child: Text(
                      Strings.jobTitle,
                      style: theme.textTheme.headline5,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
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
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: OutlinedButton(
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
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
