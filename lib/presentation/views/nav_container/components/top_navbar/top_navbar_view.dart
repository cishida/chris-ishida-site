import 'package:chris_ishida_site/_constants/constants.dart';
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
      builder: (context, viewModel, child) {
        ThemeData theme = Theme.of(context);

        return Padding(
          padding: EdgeInsets.symmetric(
            vertical: Sizes.marginDefault,
            horizontal: Sizes.marginDefaultDouble,
          ),
          child: Row(
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => viewModel.onLogoTap(
                    context,
                  ),
                  child: Text(
                    'CI',
                    style: theme.textTheme.headline1,
                  ),
                ),
              ),
              const Spacer(),
              ...viewModel.navItems(),
            ],
          ),
        );
      },
    );
  }
}
