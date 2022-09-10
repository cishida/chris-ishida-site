import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.padding,
  }) : super(key: key);

  final String text;
  final Function onPressed;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    var deviceType = getDeviceType(size);

    double buttonFontSize = 22.0;
    if (deviceType != DeviceScreenType.desktop) {
      buttonFontSize = 16.0;
    }

    return OutlinedButton(
      onPressed: () => onPressed(),
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          width: 3.0,
          color: theme.colorScheme.primary,
        ),
      ),
      child: Padding(
        padding: padding ??
            EdgeInsets.symmetric(
              horizontal: Sizes.marginDefaultHalf,
              vertical: Sizes.marginDefault,
            ),
        child: Text(
          text,
          style: theme.textTheme.button?.copyWith(
            fontSize: buttonFontSize,
            color: theme.colorScheme.primary,
            fontFamily: 'SourceSansPro',
          ),
        ),
      ),
    );
  }
}
