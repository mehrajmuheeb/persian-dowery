import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_pd/styles_custom/colors.dart';
import 'package:flutter_app_pd/styles_custom/my_flutter_app_icons.dart';

final labelStyle = TextStyle(
    fontFamily: "WorkSans",
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: colorTertiary);

final descriptionStyle = TextStyle(
    fontFamily: "WorkSansThin",
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.normal,
    fontSize: 14,
    color: colorPrimary);

class FooterWidget extends StatefulWidget {
  @override
  _FooterWidgetState createState() => _FooterWidgetState();
}

class _FooterWidgetState extends State<FooterWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Contact Us",
                    style: labelStyle,
                  ),
                  Text(
                    "+91-7780808080, +91-7780808080, +91-7780808080",
                    style: descriptionStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      "Rainawari, Srinagar, J&K, 190003",
                      style: descriptionStyle,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  // Text(
                  //   "Follow us on",
                  //   style: labelStyle,
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 50,
                          height: 50,
                          child: FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: colorTertiary,
                            child: Icon(
                              MyFlutterApp.facebook_1,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 50,
                          height: 50,
                          child: FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: colorTertiary,
                            child: Icon(
                              MyFlutterApp.twitter,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 50,
                          height: 50,
                          child: FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: colorTertiary,
                            child: Icon(
                              MyFlutterApp.instagram,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // Expanded(
            //   flex: 1,
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text(
            //         "We are at",
            //         style: labelStyle,
            //       ),
            //       Text(
            //         "Rainawari, Srinagar, J&K, 190003",
            //         style: descriptionStyle,
            //       )
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
