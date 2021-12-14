import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        Text(
          "Hi, I am Nibesh Khadka.  ",
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(fontSize: context.isMobile ? 32 : 44),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.",
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(fontSize: context.isMobile ? 16 : 20),
        ),
        const SizedBox(
          height: 10.0,
        ),
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Theme.of(context).colorScheme.error,
              ),
              foregroundColor: MaterialStateProperty.all(
                Theme.of(context).colorScheme.onError,
              ),
            ),
            onPressed: () {},
            child: const Text(
              "Download Resume",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ))
      ],
      crossAlignment: CrossAxisAlignment.center,
    );
  }
}
