import 'package:flutter/material.dart';
import 'package:vrouter/vrouter.dart';

class AppDrawerWidget extends StatefulWidget {
  const AppDrawerWidget({Key? key}) : super(key: key);

  @override
  State<AppDrawerWidget> createState() => _AppDrawerWidgetState();
}

class _AppDrawerWidgetState extends State<AppDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.only(top: 20),
        // padding: const EdgeInsets.only(top: 8),

        children: [
          InkWell(
            child: ListTile(
                title: Text(
              'About Me',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4,
            )),
            onTap: () => context.vRouter.toNamed('about-me'),
          ),
          Divider(),
          InkWell(
            child: ListTile(
                title: Text(
              'Contact',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4,
            )),
            onTap: () => context.vRouter.toNamed('contact-me'),
          ),
          Divider(),
          InkWell(
            child: ListTile(
                title: Text(
              'Works',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4,
            )),
            onTap: () => context.vRouter.toNamed('works'),
          ),
          Divider(),
          InkWell(
            child: ListTile(
                title: Text(
              'Blogs',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4,
            )),
            onTap: () => context.vRouter.toNamed('blogs'),
          ),
          Divider(),
        ],
      ),
    );
  }
}
