import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:portfolio/widgets/sticky_header.dart';

import '../widget_barrel.dart';

class Certifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverStickyHeader.builder(
      overlapsContent: true,
      sticky: true,
      builder: (context, state) => StickyHeader(
        headerName: 'Certifications',
        isPinned: state.isPinned,
      ),
      sliver: SliverList(
        delegate: SliverChildListDelegate([
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: 0.0,
                horizontal: MediaQuery.of(context).size.width * 0.1),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Visibility(
                  visible: MediaQuery.of(context).size.width > 768,
                  child: Expanded(
                    flex: 2,
                    child: Container(),
                  ),
                ),
                Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 24.0,
                        ),
                        Text('Awards & Certifications',
                            style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontSize: 30,
                                fontWeight: FontWeight.w800)),
                        SizedBox(
                          height: 24.0,
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: kCertifications.length,
                          itemBuilder: (BuildContext context, int index) =>
                              ResumeItem(
                            resume: kCertifications[index],
                            icon: Icons.star,
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
