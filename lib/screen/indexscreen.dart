import 'package:flutter/material.dart';
import 'package:portfolio/resume/certifications.dart';
import 'package:portfolio/resume/education.dart';
import 'package:portfolio/resume/experience.dart';
import 'package:portfolio/resume/skills.dart';
import 'package:portfolio/widget_barrel.dart';

class IndexScreen extends StatefulWidget {
  @override
  _IndexScreenState createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  final ScrollController myScrollWorks = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PrimaryScrollController(
        controller: myScrollWorks,
        child: Scrollbar(
          child: CustomScrollView(
            cacheExtent: MediaQuery.of(context).size.height * 0.5,
            slivers: <Widget>[
              SliverAppBar(
                floating: false,
                pinned: true,
                snap: false,
                title: TitleName(),
                backgroundColor: Colors.white,
                flexibleSpace: BannerBackground(),
                expandedHeight: MediaQuery.of(context).size.height,
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  SizedBox(height: 24.0),
                  AboutMe(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  SocialSkills(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                ]),
              ),
              Education(),
              Experience(),
              Skills(),
              Certifications(),
              SliverList(
                delegate: SliverChildListDelegate([
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Projects(),
                  Contact(),
                  Footer(),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
