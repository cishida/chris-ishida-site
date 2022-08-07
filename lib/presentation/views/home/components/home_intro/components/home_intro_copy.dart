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
          left: -50.0,
          top: 200.0,
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
                    style: theme.textTheme.headline2,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: Sizes.marginDefaultDouble,
                      bottom: Sizes.marginDefaultDouble + Sizes.marginDefault,
                    ),
                    child: Text(
                      Strings.jobTitle,
                      style: theme.textTheme.headline5,
                    ),
                  ),
                ),
                // Align(
                //   alignment: Alignment.centerLeft,
                //   child: Text(
                //     Strings.subtitle,
                //     style: theme.textTheme.subtitle1,
                //   ),
                // ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(
                    onPressed: () => onPressed(),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: Sizes.marginDefaultHalf,
                        vertical: Sizes.marginDefaultHalf,
                      ),
                      child: Text(
                        Strings.homeCTA.toUpperCase(),
                        style: theme.textTheme.button?.copyWith(
                          fontSize: 22.0,
                        ),
                      ),
                    ),
                  ),
                ),
                // const Spacer(),
                // const Spacer(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
