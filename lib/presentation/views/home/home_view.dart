import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:chris_ishida_site/presentation/views/home/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) {
        ThemeData theme = Theme.of(context);
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Sizes.marginDefault,
          ),
          child: Row(
            children: [
              Expanded(
                child: Center(
                  child: IntrinsicWidth(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Using triple spacers for alignment
                        // without percentages
                        const Spacer(),
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
                            padding: EdgeInsets.symmetric(
                              vertical: Sizes.marginDefaultDouble,
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
                          child: Text(
                            Strings.homeCTA.toUpperCase(),
                            style: theme.textTheme.button,
                          ),
                        ),
                        const Spacer(),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: const [
                    Text('Image here'),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
