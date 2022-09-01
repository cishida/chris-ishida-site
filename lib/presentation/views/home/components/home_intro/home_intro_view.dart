import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:chris_ishida_site/presentation/views/home/components/home_intro/home_intro_view_model.dart';
import 'package:chris_ishida_site/presentation/views/home/components/home_intro/components/home_intro_copy.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeIntroView extends StatelessWidget {
  const HomeIntroView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeIntroViewModel>.reactive(
      viewModelBuilder: () => HomeIntroViewModel(),
      builder: (context, viewModel, child) {
        final ThemeData theme = Theme.of(context);
        final Size size = MediaQuery.of(context).size;

        return SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 3,
                child: Stack(
                  children: [
                    Positioned(
                      left: -300.0,
                      top: 150.0,
                      child: Image.asset(
                        'images/geometric/diamonds.png',
                        color: theme.colorScheme.primary.withOpacity(.5),
                        height: size.height * .65,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: size.width * Sizes.siteWideLeftMarginPercent,
                        right: 0.0,
                      ),
                      child: HomeIntroCopy(
                        onPressed: () => viewModel.onProductsButton(),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  // height: MediaQuery.of(context).size.height * .7,
                  padding: EdgeInsets.only(
                    right: Sizes.marginDefaultQuad,
                  ),
                  child: Image.asset(
                    'images/portraits/chris-masked.png',
                    // color: theme.colorScheme.primary.withOpacity(.5),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
