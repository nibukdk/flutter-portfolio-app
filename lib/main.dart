import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/blog_list_screen.dart';
import 'package:my_portfolio/screens/contact_me_screen.dart';
import 'package:my_portfolio/screens/work_detail_screen.dart';
import 'package:my_portfolio/screens/work_list_screen.dart';
import 'package:vrouter/vrouter.dart';

//
import 'package:my_portfolio/screens/about_me_screen.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

VRouter appRoutes() {
  return VRouter(
    initialUrl: '/about-me',
    routes: [
      VWidget(path: "/about-me", widget: AboutMeScreen(), name: "about-me"),
      VWidget(path: "/blogs", widget: BlogsListScreen(), name: "blogs"),
      VWidget(path: "/works", widget: WorksListScreen(), name: 'works'),
      VWidget(
          path: "/contact-me", widget: ContactMeScreen(), name: 'contact-me'),
    ],
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // final customTheme = CustomTheme(context);

    return VRouter(
      initialUrl: '/about-me',
      routes: [
        VWidget(
            path: "/about-me",
            widget: SafeArea(child: AboutMeScreen()),
            name: "about-me"),
        VWidget(
            path: "/blogs",
            widget: SafeArea(child: BlogsListScreen()),
            name: "blogs"),
        VWidget(
            path: "/works",
            widget: SafeArea(child: WorksListScreen()),
            name: 'works'),
        VWidget(
            path: "/contact-me",
            widget: SafeArea(child: ContactMeScreen()),
            name: 'contact-me'),
      ],
      title: 'Flutter Demo',
      theme: appTheme,
      // home: SafeArea(child: AboutMeScreen()),
    );
  }
}
