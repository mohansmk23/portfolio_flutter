import 'package:flutter/material.dart';

class StickyHeader extends StatelessWidget {
  final String? headerName;
  final bool isPinned;

  const StickyHeader({this.headerName, this.isPinned = true});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: MediaQuery.of(context).size.width > 768,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 36.0, horizontal: 36.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedContainer(
                duration: Duration(milliseconds: 500),
                height: 3.0,
                color: Theme.of(context).primaryColor,
                width: isPinned ? 24.0 : 0.0),
            Visibility(
              visible: isPinned,
              child: SizedBox(
                width: 12.0,
              ),
            ),
            Text(headerName ?? '',
                style: TextStyle(
                    color: isPinned
                        ? Theme.of(context).primaryColor
                        : Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700)),
          ],
        ),
      ),
    );
  }
}
