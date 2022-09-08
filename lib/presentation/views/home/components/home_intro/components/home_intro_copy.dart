import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:chris_ishida_site/presentation/views/home/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

class HomeIntroCopy extends ViewModelWidget<HomeViewModel> {
  const HomeIntroCopy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    HomeViewModel viewModel,
  ) {
    ThemeData theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    var deviceType = getDeviceType(size);

    TextStyle? headerStyle = theme.textTheme.headline2?.copyWith(
      fontFamily: 'SourceSansPro',
      fontWeight: FontWeight.w600,
    );

    double buttonFontSize = 22.0;

    if (deviceType != DeviceScreenType.desktop) {
      headerStyle = theme.textTheme.headline3?.copyWith(
        fontFamily: 'SourceSansPro',
        fontWeight: FontWeight.w600,
      );
      buttonFontSize = 16.0;
    }

    return IntrinsicWidth(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Strings.intro,
            textAlign: TextAlign.left,
            style: headerStyle,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: Sizes.marginDefaultDouble,
              bottom: Sizes.marginDefaultDouble,
            ),
            child: Text(
              Strings.jobTitle,
              style: theme.textTheme.headline5?.copyWith(
                fontFamily: 'SourceSansPro',
              ),
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
                fontFamily: 'SourceSansPro',
              ),
            ),
          ),
          OutlinedButton(
            onPressed: () => viewModel.scrollToContact(),
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
                  fontSize: buttonFontSize,
                  color: theme.colorScheme.primary,
                  fontFamily: 'SourceSansPro',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
