import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:chris_ishida_site/presentation/animations/entrance_fader.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TopNavbarButton extends StatelessWidget {
  final String label;
  final int index;
  const TopNavbarButton({
    Key? key,
    required this.label,
    required this.index,
  }) : super(key: key);

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
          onPressed: () {
            debugPrint('Label: $label');
            debugPrint('Index: $index');
          },
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Sizes.marginDefault,
              vertical: Sizes.marginDefaultHalf,
            ),
            child: Text(
              label,
              style: theme.textTheme.headline5,
            ),
          ),
        ),
      ),
    );
  }
}
