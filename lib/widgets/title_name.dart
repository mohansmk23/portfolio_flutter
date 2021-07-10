import 'package:flutter/material.dart';
import 'package:portfolio/widget_barrel.dart';

class TitleName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Theme.of(context).accentColor,
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 4.0),
              child: Text(
                TITLE_PERSON_NAME[0],
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 22.0),
              ),
            ),
          ),
        ),
        Text(
          TITLE_PERSON_NAME.substring(1),
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w900, fontSize: 22.0),
        )
      ],
    );
  }
}
