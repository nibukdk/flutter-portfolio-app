import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:vrouter/vrouter.dart';
import 'package:my_portfolio/widgets/drawer.dart';

//
import 'package:my_portfolio/layouts/footer.dart';
import 'package:my_portfolio/layouts/about_me_layout.dart';
import 'package:my_portfolio/layouts/featured_works_layout.dart';
import 'package:my_portfolio/layouts/recent_blogs_layout.dart';

class AboutMeScreen extends StatelessWidget {
  AboutMeScreen({Key? key}) : super(key: key);

  final List<Widget> aboutMeScreenWidgetLists = [
    AboutMeLayout(),
    RecentPostsLayout(),
    WorkDisplayLayout(),
    Footer()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: context.isMobile ? const AppDrawerWidget() : null,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text("Nibesh Khadka"),
            floating: true,
            snap: true,
            actions: !context.isMobile
                ? [
                    TextButton(
                      child: Text(
                        'About Me',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      onPressed: () => context.vRouter.toNamed('about-me'),
                    ),
                    TextButton(
                      child: Text(
                        'Contact',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      onPressed: () => context.vRouter.toNamed('contact-me'),
                    ),
                    TextButton(
                        child: Text(
                          'Works',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        onPressed: () => context.vRouter.toNamed('works')),
                    TextButton(
                        child: Text(
                          'Blogs',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        onPressed: () => context.vRouter.toNamed('blogs')),
                  ]
                : null,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (ctx, i) => aboutMeScreenWidgetLists[i],
              childCount: 4,
            ),
          )
        ],
      ),
    );
  }
}
