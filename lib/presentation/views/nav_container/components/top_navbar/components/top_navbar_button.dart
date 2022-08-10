import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:chris_ishida_site/core/models/nav_item.dart';
import 'package:chris_ishida_site/presentation/animations/entrance_fader.dart';
import 'package:flutter/material.dart';

class TopNavbarButton extends StatelessWidget {
  const TopNavbarButton({
    Key? key,
    required this.data,
    required this.onPressed,
  }) : super(key: key);

  final NavItem data;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return EntranceFader(
      offset: const Offset(0, -10),
      delay: const Duration(milliseconds: 100),
      duration: const Duration(milliseconds: 250),
      child: Container(
        // margin: Space.h!,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: MaterialButton(
          splashColor: Colors.white38,
          highlightColor: Colors.white38,
          hoverColor: theme.colorScheme.primary,
          onPressed: () => onPressed(),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Sizes.marginDefault,
              vertical: Sizes.marginDefaultHalf,
            ),
            child: Text(
              data.title,
              style: theme.textTheme.headline5,
            ),
          ),
        ),
      ),
    );
  }
}
