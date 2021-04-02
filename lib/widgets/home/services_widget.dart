import 'package:flutter/material.dart';
import 'package:flutter_app_pd/styles_custom/colors.dart';

final labelStyle = TextStyle(
    fontFamily: "WorkSans",
    fontWeight: FontWeight.normal,
    fontSize: 25,
    color: colorTertiary);

class ServicesWidget extends StatefulWidget {
  @override
  _ServicesWidgetState createState() => _ServicesWidgetState();
}

class _ServicesWidgetState extends State<ServicesWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Container(
        height: 300,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text('Our services include',
                  style: labelStyle,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 300,
                      child: Divider(
                        color: Colors.black26,
                        thickness: 1,
                        height: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 1,
                  child: Card  (
                    color: Colors.white,
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'web/assets/images/manufacture.png',
                                color: Colors.black26,
                                fit: BoxFit.scaleDown,
                                width: 70,
                                height: 70,
                              ),
                            ),
                            Text(
                              'Manufacture',
                              style: TextStyle(
                                fontFamily: 'WorkSans',
                                fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                fontSize: 20
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Card(
                    color: Colors.white,
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center  ,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'web/assets/images/export.png',
                                color: Colors.black26,
                                fit: BoxFit.scaleDown,
                                width: 70,
                                height: 70,
                              ),
                            ),
                            Text(
                              'Export',
                              style: TextStyle(
                                  fontFamily: 'WorkSans',
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 20
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Card(
                    color: Colors.white,
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'web/assets/images/retail.png',
                                color: Colors.black26,
                                fit: BoxFit.scaleDown,
                                width: 70,
                                height: 70,
                              ),
                            ),
                            Text(
                              'Retail',
                              style: TextStyle(
                                  fontFamily: 'WorkSans',
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 20
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Card(
                    color: Colors.white,
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'web/assets/images/showroom.png',
                                color: Colors.black26,
                                fit: BoxFit.scaleDown,
                                width: 70,
                                height: 70,
                              ),
                            ),
                            Text(
                              'Showroom',
                              style: TextStyle(
                                  fontFamily: 'WorkSans',
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 20
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
