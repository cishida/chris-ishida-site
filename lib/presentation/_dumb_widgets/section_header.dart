import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Size size = MediaQuery.of(context).size;
    var deviceType = getDeviceType(size);

    TextStyle? style = theme.textTheme.headline4?.copyWith(
      fontWeight: FontWeight.w900,
    );

    double topPadding = 0.0;

    if (deviceType != DeviceScreenType.desktop) {
      style = theme.textTheme.headline6?.copyWith(
        fontFamily: 'SourceSansPro',
        fontWeight: FontWeight.w600,
      );
      topPadding = Sizes.marginDefaultQuad;
    }

    return Padding(
      padding: EdgeInsets.only(
        bottom: Sizes.marginDefaultQuad,
        top: topPadding,
      ),
      child: Row(
        children: [
          Text(
            title,
            style: style,
          ),
          SizedBox(
            width: Sizes.marginDefault,
          ),
          Expanded(
            child: Divider(
              height: 4.0,
              color: theme.colorScheme.primary.withOpacity(.4),
            ),
          ),
        ],
      ),
    );
  }
}
