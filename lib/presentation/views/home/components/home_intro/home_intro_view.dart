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
        ThemeData theme = Theme.of(context);

        return SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: HomeIntroCopy(
                  onPressed: () => viewModel.onProductsButton(),
                ),
              ),
              Expanded(
                child: SizedBox(
                  // height: MediaQuery.of(context).size.height * .7,
                  child: Image.asset(
                    'images/geometric/diamonds.png',
                    color: theme.colorScheme.primary.withOpacity(.5),
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
