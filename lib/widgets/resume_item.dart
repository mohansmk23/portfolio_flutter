import 'package:flutter/material.dart';

import '../widget_barrel.dart';

class ResumeItem extends StatelessWidget {
  final ResumeModel resume;
  final IconData icon;

  const ResumeItem({required this.resume, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          radius: 25,
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${resume.period}',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 16.0),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                '${resume.title}',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 24.0),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                '${resume.place}',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 18.0),
              ),
              Text(
                '${resume.description}',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                    fontSize: 16.0),
              ),
              Divider(
                height: 42.0,
              )
            ],
          ),
        ),
      ],
    );
  }
}
