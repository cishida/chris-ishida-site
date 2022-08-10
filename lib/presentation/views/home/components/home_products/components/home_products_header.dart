import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:flutter/material.dart';

class HomeProductsHeader extends StatelessWidget {
  const HomeProductsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.only(
        bottom: Sizes.marginDefaultDouble,
      ),
      child: Row(
        children: [
          Text(
            Strings.productsHeader,
            style: theme.textTheme.headline4?.copyWith(
              fontWeight: FontWeight.w900,
            ),
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
