import 'package:chris_ishida_site/_constants/constants.dart';
import 'package:chris_ishida_site/presentation/_dumb_widgets/chris_portrait.dart';
import 'package:chris_ishida_site/presentation/views/home/components/home_intro/components/home_intro_copy.dart';
import 'package:flutter/material.dart';

class HomeIntroMobile extends StatelessWidget {
  const HomeIntroMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height,
      child: Stack(
        children: [
          Positioned(
            right: -10.0,
            top: 450.0,
            child: Padding(
              padding: EdgeInsets.only(
                top: Sizes.marginDefaultDouble,
              ),
              child: SizedBox(
                height: size.height * .5,
                child: const ChrisPortrait(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              // top: Sizes.margin200,
              left: Sizes.marginDefaultDouble,
              right: Sizes.marginDefaultDouble,
            ),
            child: const HomeIntroCopy(),
          ),
        ],
      ),
    );
  }
}
