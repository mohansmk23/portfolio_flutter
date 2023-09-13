import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:portfolio/widget_barrel.dart';

class BannerArrowDown extends StatefulWidget {
  @override
  _BannerArrowDownState createState() => _BannerArrowDownState();
}

class _BannerArrowDownState extends State<BannerArrowDown>
    with TickerProviderStateMixin {
  AnimationController? _controller;
  Animation<Offset>? _offsetAnimation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: false);
    _offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(0.0, 2.5),
    ).animate(CurvedAnimation(
      parent: _controller!,
      curve: Curves.linear,
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Transform.rotate(
            angle: -math.pi / 4,
            child: Container(
              width: 75.0,
              height: 75.0,
              color: BANNER_BG_COLOR,
            ),
          ),
          SlideTransition(
              position: _offsetAnimation!,
              child: Icon(
                FontAwesomeIcons.arrowDownLong,
                size: 28.0,
                color: Theme.of(context).accentColor,
              )),
        ],
      ),
    );
  }
}
