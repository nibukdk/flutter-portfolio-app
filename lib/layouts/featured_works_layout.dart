import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:my_portfolio/widgets/work_item_widget.dart';

class WorkDisplayLayout extends StatelessWidget {
  const WorkDisplayLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: context.screenWidth * .9,
        // padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: context.isMobile
              ? CrossAxisAlignment.center
              : CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Featured Works",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w300,
                  color: Theme.of(context).textTheme.bodyText1!.color,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: WorkItemWidget(),
            ),
            Divider(),
          ],
        ));
  }
}
