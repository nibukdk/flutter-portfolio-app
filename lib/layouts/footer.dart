import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  static const _githubUrl = "https://github.com/nibukdk";
  static const _linkedinUrl = "https://www.linkedin.com/in/nibesh-khadka";
  static const _mediumUrl = "https://nibeshkhadka.medium.com/";

  void _launchURL(_url) async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth * 0.7,
      padding: EdgeInsets.all(20),
      child: VStack(
        [
          Divider(),
          HStack(
            [
              IconButton(
                onPressed: () => _launchURL(_githubUrl),
                icon: const FaIcon(FontAwesomeIcons.github),
                color: Colors.green[900],
              ),
              IconButton(
                  onPressed: () => _launchURL(_mediumUrl),
                  icon: const FaIcon(FontAwesomeIcons.mediumM)),
              IconButton(
                onPressed: () => _launchURL(_linkedinUrl),
                icon: const FaIcon(FontAwesomeIcons.linkedin),
                color: Colors.blue[800],
              ),

              // IconButton(
              //     onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.github)),
            ],
            alignment: MainAxisAlignment.spaceAround,
          ),
          RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "All Copyright ",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(fontStyle: FontStyle.italic),
                  ),
                  WidgetSpan(
                      child: Icon(Icons.copyright_outlined),
                      alignment: PlaceholderAlignment.middle),
                  TextSpan(
                    text: " belogns to Nibesh Khadka, ${DateTime.now().year}.",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(fontStyle: FontStyle.italic),
                  ),
                ],
              ),
              textAlign: TextAlign.center),
        ],
        alignment: MainAxisAlignment.center,
        crossAlignment: CrossAxisAlignment.center,
      ),
    );
  }
}
