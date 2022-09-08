import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:chris_ishida_site/presentation/_dumb_widgets/chris_portrait.dart';
import 'package:chris_ishida_site/presentation/_dumb_widgets/diamonds.dart';
import 'package:chris_ishida_site/presentation/views/home/components/home_intro/components/home_intro_copy.dart';
import 'package:flutter/material.dart';

class HomeIntroDesktop extends StatelessWidget {
  const HomeIntroDesktop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 1.05,
      width: size.width,
      child: Stack(
        children: [
          const Positioned(
            left: -300.0,
            top: 150.0,
            child: Diamonds(),
          ),
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1800),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: size.width * Sizes.siteWideLeftMarginPercent,
                            right: 0.0,
                          ),
                          child: const HomeIntroCopy(),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: Sizes.marginDefaultQuad,
                      ),
                      child: const ChrisPortrait(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
