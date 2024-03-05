import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widget_barrel.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          color: Colors.white,
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.1,
              right: MediaQuery.of(context).size.width * 0.1),
          child: Row(
            children: [
              Visibility(
                visible: constraints.maxWidth > 768,
                child: Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Image.asset(
                    PORTFOLIO_IMG,
                    fit: BoxFit.cover,
                  ),
                )),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'About Me',
                          style: TextStyle(
                              fontSize:
                                  constraints.maxWidth > 768 ? 50.0 : 38.0,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(
                        height: 32.0,
                      ),
                      Flexible(
                        child: Text(
                          ABOUT_ME_DESC,
                          style: kAboutMeValuesStyle,
                        ),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Visibility(
                        visible: constraints.maxWidth < 768,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Image.asset(
                            PORTFOLIO_IMG,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 42.0,
                      ),
                      Column(
                        children: getDetails(),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Row(
                          children: [
                            Text(
                              PROJECT_COMPLETE_COUNT,
                              style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 12.0,
                            ),
                            Text(
                              'Project Complete',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Theme.of(context).colorScheme.secondary,
                            onPrimary: Colors.white, // foreground
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.0))),
                        onPressed: () {
                          launch(DOWNLOAD_CV_URL);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'DOWNLOAD CV',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  List<Widget> getDetails() {
    List<Widget> values = [];

    for (int i = 0; i < ABOUT_ME_VALUES.length; i++) {
      values.add(Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 130.0,
              child: Text(
                ABOUT_ME_LABELS[i],
                style: kAboutMeLabelsTextStyle,
              ),
            ),
            SizedBox(
              width: 24.0,
            ),
            Flexible(
              child: Text(
                ABOUT_ME_VALUES[i],
                style: kAboutMeValuesStyle,
              ),
            )
          ],
        ),
      ));
    }

    return values;
  }
}
