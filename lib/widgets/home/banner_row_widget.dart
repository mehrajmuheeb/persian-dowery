import 'package:flutter/material.dart';
import 'package:flutter_app_pd/styles_custom/colors.dart';

class BannerRowWidget extends StatefulWidget {
  @override
  _BannerRowWidgetState createState() => _BannerRowWidgetState();
}

class _BannerRowWidgetState extends State<BannerRowWidget> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          flex: 1,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(children: [
                      TextSpan(
                          text: "We Help",
                          style: TextStyle(
                              fontFamily: 'WorkSans',
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                              color: colorSecondary)),
                      TextSpan(
                          text: " You Make Modern Interior\n",
                          style: TextStyle(
                              fontFamily: 'WorkSans',
                              fontWeight: FontWeight.bold,
                              fontSize: 45,
                              color: colorPrimary)),

                      TextSpan(
                          text: "Be mesmerised with our exquisite collection and experience"
                              "\nthe rich cultural wonder",
                          style: TextStyle(
                              fontFamily: 'WorkSans',
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                              color: colorPrimary)),
                    ]),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Explore more..',
                        style: TextStyle(fontFamily: 'WorkSans'),
                      ),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.green))),
              ],
            ),
          ),
        ),
        Expanded(
            flex: 1,
            child: Container(
              height: height,
              child: Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  fit: StackFit.loose,
                  children: [
                    Positioned(
                      bottom: height/5,
                      left: width/8,
                      child: Card(
                        elevation: 20,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Image.asset(
                            'web/assets/images/banner_image_1.jpg',
                            height: height/2.5,
                            width: width/7,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: height/9,
                      left: 0,
                      child: Card(
                        elevation: 20,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'web/assets/images/banner_img_3.jpg',
                            height: height / 2.4,
                            width: width/7,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: height/30,
                      left: width/10,
                      child: Card(
                        elevation: 20,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'web/assets/images/carpet_1.jpg',
                            height: height/4,
                            width: width/4,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ))
      ],
    );
  }
}
