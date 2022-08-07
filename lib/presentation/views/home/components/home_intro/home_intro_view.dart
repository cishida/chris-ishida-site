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
        return SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Row(
            children: [
              Expanded(
                child: HomeIntroCopy(
                  onPressed: () => viewModel.onProductsButton(),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    // const Spacer(),
                    // Stack(
                    //   children: [
                    //     Positioned(
                    //       // top: 0.0,
                    //       // right: 0.0,
                    //       child: Container(
                    //         color: theme.colorScheme.primary,
                    //         width: 300.0,
                    //         height: 300.0,
                    //       ),
                    //     ),
                    //     Positioned(
                    //       child: Image.asset(
                    //         'images/cartoon-chris.jpg',
                    //         width: 300.0,
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    // const Spacer(),
                    // const Spacer(),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
