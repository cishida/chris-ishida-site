import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:chris_ishida_site/presentation/_dumb_widgets/section_header.dart';
import 'package:chris_ishida_site/presentation/views/home/components/home_contact/components/contact_item_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeContactView extends StatelessWidget {
  const HomeContactView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    final Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(
        left: getDeviceType(size) == DeviceScreenType.desktop
            ? size.width * Sizes.siteWideLeftMarginPercent
            : Sizes.marginDefaultDouble,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeader(
            title: Strings.contactHeader,
          ),
          Text(
            Strings.contactSubheader,
            style: theme.textTheme.headline6?.copyWith(
              fontFamily: 'SourceSansPro',
            ),
          ),
          SizedBox(
            height: Sizes.marginDefaultQuad,
          ),
          const ContactItemView(
            title: Strings.email,
          ),
          const ContactItemView(
            title: Strings.linkedIn,
            url: Strings.linkedInUrl,
          ),
        ],
      ),
    );
  }
}
