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
        return Row(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    left: -50.0,
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
                              padding: EdgeInsets.only(
                                top: Sizes.marginDefaultDouble,
                                bottom: Sizes.marginDefaultDouble +
                                    Sizes.marginDefault,
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
                              onPressed: () => viewModel.onProductsButton(),
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
                          const Spacer(),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  const Spacer(),
                  // Stack(
                  //   children: [
                  //     Positioned(
                  //       // top: 0.0,
                  //       // right: 0.0,
                  //       child: Container(
                  //         color: theme.colorScheme.primary,
                  //         width: 300.0,
                  //         height: 300.0,
                  //       ),
                  //     ),
                  //     Positioned(
                  //       child: Image.asset(
                  //         'images/cartoon-chris.jpg',
                  //         width: 300.0,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // const Spacer(),
                  // const Spacer(),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
