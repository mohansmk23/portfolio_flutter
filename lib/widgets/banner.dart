import 'package:flutter/material.dart';
import 'package:portfolio/widget_barrel.dart';
import 'package:portfolio/widgets/banner_arrow_down.dart';

class BannerBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      background: Container(
        color: Colors.white,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Row(
              children: [
                Expanded(child: Container(color: BANNER_BG_COLOR)),
                Expanded(child: Container(color: Colors.white)),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(),
                Text(
                  'HEY! I AM',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 8.0),
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      BANNER_PERSON_NAME,
                      style: TextStyle(
                        fontSize: 60.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'I\'m a',
                          style: const TextStyle(
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        AnimatedTextKit(
                          animatedTexts: getDesignations(context),
                          totalRepeatCount: 4,
                          pause: const Duration(seconds: 2),
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                BannerArrowDown(),
                Spacer(),
              ],
            )
          ],
        ),
      ),
    );
  }

  List<AnimatedText> getDesignations(BuildContext ctx) {
    List<AnimatedText> animatedTexts = [];

    for (String designation in DESIGNATIONS) {
      animatedTexts.add(
        TyperAnimatedText(
          designation,
          speed: Duration(milliseconds: 100),
          textStyle: TextStyle(
            fontSize: 32.0,
            color: Theme.of(ctx).colorScheme.secondary,
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.w800,
          ),
        ),
      );
    }

    return animatedTexts;
  }
}
