import 'package:flutter/material.dart';

import '../widget_barrel.dart';

class ContactMeCard extends StatelessWidget {
  final ContactMeModel contactMeModel;

  ContactMeCard({this.contactMeModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:12.0),
      child: InkWell(
        onTap: contactMeModel.onClick,
        child: Container(
          height: 200.0,
          child: AspectRatio(
            aspectRatio: 1/1,
            child: Card(
              elevation: 8.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Spacer(),
                    CircleAvatar(
                      backgroundColor: Theme.of(context).accentColor,
                      radius: 50,
                      child: Icon(
                        contactMeModel.icon,
                        size: 40.0,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Text('${contactMeModel.title}',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600)),
                    Spacer(),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text('${contactMeModel.userName}',
                          maxLines: 1,
                          style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400)),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
