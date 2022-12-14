import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:chris_ishida_site/presentation/_dumb_widgets/primary_button.dart';
import 'package:chris_ishida_site/presentation/views/nav_container/components/top_navbar/components/logo.dart';
import 'package:chris_ishida_site/presentation/views/nav_container/components/top_navbar/top_navbar_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class TopNavbarView extends StatelessWidget {
  const TopNavbarView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TopNavbarViewModel>.reactive(
      viewModelBuilder: () => TopNavbarViewModel(),
      onModelReady: (model) => model.initialize(context),
      builder: (context, viewModel, child) {
        return Container(
          color: Theme.of(context).colorScheme.background.withOpacity(.9),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: Sizes.marginDefault,
              horizontal: Sizes.marginDefaultDouble,
            ),
            child: Row(
              children: [
                Logo(
                  onTap: () => viewModel.onLogoTap(context),
                ),
                const Spacer(),
                // ...viewModel.navItemButtons(),
                PrimaryButton(
                  text: 'Resume',
                  onPressed: () => viewModel.toResume(),
                  padding: EdgeInsets.only(
                    left: Sizes.marginDefaultQuarter,
                    right: Sizes.marginDefaultQuarter,
                    top: Sizes.marginDefaultHalf - 2,
                    bottom: Sizes.marginDefaultHalf,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: Sizes.marginDefaultDouble),
                  child: Switch(
                    value: viewModel.isThemeDark,
                    onChanged: (value) => viewModel.setThemeMode(
                      value,
                      context,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
