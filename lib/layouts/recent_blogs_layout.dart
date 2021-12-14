import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
//
import 'package:my_portfolio/widgets/about_me_widget.dart';
import 'package:my_portfolio/widgets/blog_post_widget.dart';
import 'package:my_portfolio/widgets/my_image_widget.dart';

class RecentPostsLayout extends StatelessWidget {
  const RecentPostsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth * 0.7,
      color: Color.fromRGBO(237, 247, 250, 1.0),
      padding: const EdgeInsets.all(16.0),
      child: context.isMobile
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    "Recent Post",
                    style: TextStyle(
                      fontSize: 22,
                      color: Theme.of(context).textTheme.bodyText1!.color,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: BlogPostWidget(),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: BlogPostWidget(),
                ),
                TextButton(
                  onPressed: () {
                    print("View ALL pressed");
                  },
                  child: Text("View All"),
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all(Colors.blueAccent)),
                )
              ],
            )
          :
          //Big Screen layout
          Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Recent Post",
                          style: TextStyle(
                            fontSize: 22,
                            color: Theme.of(context).textTheme.bodyText1!.color,
                          )),
                      TextButton(
                        onPressed: () {
                          print("View ALL pressed");
                        },
                        child: Text("View All"),
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all(Colors.blueAccent)),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      BlogPostWidget(),
                      BlogPostWidget(),
                    ],
                  )
                ],
              ),
            ),
    );
  }
}
