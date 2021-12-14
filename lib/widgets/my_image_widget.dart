import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Image.asset(
        'assets/images/resume_pic.jpg',
        height: 200.0,
        width: 200.0,
        fit: BoxFit.cover,
      ),
    );
  }
}
