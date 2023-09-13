import 'package:flutter/material.dart';
import 'package:portfolio/widget_barrel.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 36.0,
        ),
        Center(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text('Projects',
                maxLines: 1,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.w700)),
          ),
        ),
        SizedBox(
          height: 16.0,
        ),
        Text(
          'Few of my works, for more details contact me from the contact section below',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w400, color: Colors.grey, fontSize: 16.0),
        ),
        SizedBox(
          height: 24.0,
        ),
        Container(
          height: 350.0,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: kWorksAssets.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Container(
                      height: 500.0,
                      child: AspectRatio(
                          aspectRatio: 9 / 16,
                          child: Image.asset(kWorksAssets[index]))),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
