import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class WorkItemWidget extends StatelessWidget {
  const WorkItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return context.isMobile
        ? VStack(
            [
              SizedBox(
                width: context.screenWidth * 0.95,
                height: 200,
                child: Image.asset(
                  'assets/images/scr_shot.png',
                  fit: BoxFit.cover,
                ),
              ),
              VStack(
                [
                  Text(
                    "Title of Item",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  HStack(
                    [
                      Chip(
                        label: Text(
                          '2022',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        backgroundColor: Colors.black,
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Text(
                        "Work type",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ],
                    // alignment: MainAxisAlignment.spaceAround,
                  ),
                  Container(
                    width: context.screenWidth * 0.95,
                    child: Text(
                      "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ],
                alignment: MainAxisAlignment.spaceBetween,
              ).px12()
            ],
          )
        : HStack(
            [
              SizedBox(
                width: context.screenWidth * 0.3,
                height: 200,
                child: Image.asset(
                  'assets/images/scr_shot.png',
                  fit: BoxFit.cover,
                ),
              ),
              VStack(
                [
                  Text(
                    "Title of Item",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  HStack(
                    [
                      Chip(
                        label: Text(
                          '2022',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        backgroundColor: Colors.black,
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Text(
                        "Work type",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ],
                    alignment: MainAxisAlignment.spaceEvenly,
                  ),
                  Container(
                    width: context.screenWidth * 0.35,
                    child: Text(
                      "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  )
                ],
                alignment: MainAxisAlignment.spaceBetween,
              ).px12()
            ],
            alignment: MainAxisAlignment.spaceAround,
            crossAlignment: CrossAxisAlignment.start,
          );
  }
}



// VStack(
//               [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: SizedBox(
//                     width: context.screenWidth * 0.3,
//                     height: 200,
//                     child: Image.asset(
//                       'assets/images/scr_shot.png',
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(6.0),
//                   child: Text(
//                     "Title of Item",
//                     style: Theme.of(context).textTheme.headline3,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 2.0, bottom: 2.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Chip(
//                         label: Text('2022'),
//                         backgroundColor: Colors.black,
//                       ),
//                       SizedBox(
//                         width: 8,
//                       ),
//                       Text(
//                         "Work type",
//                         style: Theme.of(context).textTheme.subtitle1,
//                       ),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(6.0),
//                   child: Text(
//                     "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
//                     style: Theme.of(context).textTheme.bodyText1,
//                   ),
//                 )
//               ],
//               crossAlignment: CrossAxisAlignment.start,
//             )