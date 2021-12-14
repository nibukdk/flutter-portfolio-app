import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

//
import 'package:my_portfolio/widgets/about_me_widget.dart';
import 'package:my_portfolio/widgets/my_image_widget.dart';

class AboutMeLayout extends StatelessWidget {
  const AboutMeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth * 0.7,
      child: context.isMobile
          ? const VStack(
              [
                MyImageWidget(),
                AboutMeWidget(),
              ],
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAlignment: CrossAxisAlignment.center,
            )
          : const HStack(
              [
                Flexible(child: AboutMeWidget(), flex: 2),
                Flexible(child: MyImageWidget(), flex: 1)
              ],
              alignment: MainAxisAlignment.spaceAround,
            ),
      padding: const EdgeInsets.all(20),
    );
  }
}
