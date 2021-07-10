import 'package:flutter/material.dart';
import 'package:portfolio/widget_barrel.dart';

class SkillsProgressBar extends StatelessWidget {
  final SkillsModel skill;

  const SkillsProgressBar({this.skill});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:24.0),
      child: Column(
      children: [
      Row(
        children: [
          Text(
            skill.name,
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Colors.black),
          ),
          Spacer(),
          Text(
            '${skill.percentage} %',
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Colors.black),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: LinearProgressIndicator(
          value: skill.percentage * 0.01,
          minHeight: 10.0,
          backgroundColor: Colors.grey[300],
        ),
      ),
      ],
    ),
    );
  }
}
