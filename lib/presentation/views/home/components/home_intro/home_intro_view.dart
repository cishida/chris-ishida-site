import 'package:chris_ishida_site/presentation/views/home/components/home_intro/home_intro_desktop.dart';
import 'package:chris_ishida_site/presentation/views/home/components/home_intro/home_intro_mobile.dart';
import 'package:chris_ishida_site/presentation/views/home/components/home_intro/home_intro_view_model.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
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
        return ScreenTypeLayout.builder(
          mobile: (BuildContext context) => const HomeIntroMobile(),
          tablet: (BuildContext context) => const HomeIntroMobile(),
          desktop: (BuildContext context) => const HomeIntroDesktop(),
        );
      },
    );
  }
}
