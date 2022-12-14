import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:chris_ishida_site/core/models/product/product.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProductContentView extends StatelessWidget {
  const ProductContentView({
    Key? key,
    required this.contentList,
  }) : super(key: key);

  final List<ProductContent> contentList;

  Widget _buildHeader({
    required ThemeData theme,
    required String header,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: Sizes.marginDefaultQuad,
      ),
      child: Text(
        header,
        style: theme.textTheme.headline4?.copyWith(
          fontWeight: FontWeight.w600,
          fontFamily: 'SourceSansPro',
        ),
      ),
    );
  }

  Widget _buildHeader2({
    required ThemeData theme,
    required String header,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        top: Sizes.marginDefaultQuad + Sizes.marginDefault,
        bottom: Sizes.marginDefaultQuad,
      ),
      child: Text(
        header,
        style: theme.textTheme.headline5?.copyWith(
          fontWeight: FontWeight.w600,
          fontFamily: 'SourceSansPro',
        ),
      ),
    );
  }

  Widget _buildSubheader({
    required ThemeData theme,
    required String subheader,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: Sizes.marginDefaultDouble,
      ),
      child: Text(
        subheader,
        style: theme.textTheme.headline5?.copyWith(
          fontSize: 28.0,
          fontWeight: FontWeight.w300,
          fontFamily: 'SourceSansPro',
        ),
      ),
    );
  }

  Widget _buildParagraph({
    required ThemeData theme,
    required String paragraph,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: Sizes.marginDefaultDouble,
      ),
      child: Text(
        paragraph,
        style: theme.textTheme.headline5?.copyWith(
          fontSize: 24.0,
          fontWeight: FontWeight.w300,
          fontFamily: 'SourceSansPro',
        ),
      ),
    );
  }

  Widget _buildImage({
    required ThemeData theme,
    required String assetPath,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        top: Sizes.marginDefaultDouble,
        bottom: Sizes.marginDefaultQuad,
      ),
      child: Image.asset(
        assetPath,
      ),
    );
  }

  List<Widget> _buildWidgets(ThemeData theme) {
    List<Widget> widgets = [];

    for (var productContent in contentList) {
      switch (productContent.type) {
        case ProductContentType.header:
          widgets.add(
            _buildHeader(
              theme: theme,
              header: productContent.content,
            ),
          );
          break;
        case ProductContentType.header2:
          widgets.add(
            _buildHeader2(
              theme: theme,
              header: productContent.content,
            ),
          );
          break;
        case ProductContentType.subheader:
          widgets.add(
            _buildSubheader(
              theme: theme,
              subheader: productContent.content,
            ),
          );
          break;
        case ProductContentType.paragraph:
          widgets.add(
            _buildParagraph(
              theme: theme,
              paragraph: productContent.content,
            ),
          );
          break;
        case ProductContentType.image:
          widgets.add(
            _buildImage(
              theme: theme,
              assetPath: productContent.content,
            ),
          );
          break;
        default:
      }
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Size size = MediaQuery.of(context).size;
    var deviceType = getDeviceType(size);

    TextStyle? titleStyle = theme.textTheme.headline1;
    double width = size.width * .5;
    double leftPadding = size.width * Sizes.siteWideLeftMarginPercent;

    if (deviceType != DeviceScreenType.desktop) {
      width = size.width;
    }

    return SizedBox(
      width: width,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Sizes.marginDefaultDouble,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: _buildWidgets(
            theme,
          ),
        ),
      ),
    );
  }
}
