import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Text("(803) 783-5730"),
        Text("jerry@smithprintingsc.com"),
        Text(
          "Business Hours (available via phone and email): Monday – Friday, 9am – 5pm",
        ),
      ],
    ));
  }
}
