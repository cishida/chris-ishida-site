import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:chris_ishida_site/presentation/views/home/components/home_contact/components/contact_item_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';

class ContactItemView extends StatelessWidget {
  const ContactItemView({
    Key? key,
    required this.title,
    this.url = '',
  }) : super(key: key);

  final String title;
  final String url;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ContactItemViewModel>.reactive(
      viewModelBuilder: () => ContactItemViewModel(),
      builder: (context, viewModel, child) {
        ThemeData theme = Theme.of(context);

        return SizedBox(
          width: 400,
          height: 50.0,
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            hitTestBehavior: HitTestBehavior.opaque,
            onEnter: (event) => viewModel.onEnter(),
            onExit: (event) => viewModel.onExit(),
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => viewModel.onTap(url),
              child: Stack(
                children: [
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.ease,
                    left: viewModel.isHovering ? 30 : 0,
                    child: Text(
                      viewModel.isHovering && url.isEmpty
                          ? Strings.copyToClipboard
                          : title,
                      style: theme.textTheme.headline6?.copyWith(
                        color: theme.colorScheme.primary,
                        fontFamily: 'SourceSansPro',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
