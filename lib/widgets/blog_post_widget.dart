import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class BlogPostWidget extends StatelessWidget {
  const BlogPostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: (context.isMobile
            ? context.screenWidth * 0.95
            : context.screenWidth * 0.45),
        child: Card(
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Blog Post TItle",
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(fontSize: context.isMobile ? 22 : 26),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "12 Feb 2020",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(fontSize: context.isMobile ? 16 : 18),
                    ),
                    // Divider(),
                    Text(
                      "Web Development",
                      style: Theme.of(context).textTheme.bodyText2,
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
                  style: Theme.of(context).textTheme.bodyText1,
                )
              ],
            ),
          ),
        ));
  }
}
