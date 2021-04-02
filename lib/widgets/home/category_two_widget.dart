import 'package:flutter/material.dart';
import 'package:flutter_app_pd/styles_custom/colors.dart';

final labelStyle = TextStyle(
    fontFamily: "WorkSans",
    fontWeight: FontWeight.bold,
    fontSize: 25,
    color: colorTertiary);

final titleStyle = TextStyle(
    fontFamily: "WorkSans",
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: colorSecondary);

final descriptionStyle = TextStyle(
    fontFamily: "WorkSans",
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.normal,
    fontSize: 18,
    color: colorPrimary);

final _label = "Carpets";

class CategoryTwoWidget extends StatefulWidget {
  @override
  _CategoryTwoWidgetState createState() => _CategoryTwoWidgetState();
}

class _CategoryTwoWidgetState extends State<CategoryTwoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [_getBody()],
      ),
    );
  }

  Widget _getLabel() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            _label,
            style: labelStyle,
          ),
        ),
        Container(
          width: 500,
          child: Divider(
            thickness: 1,
            color: Colors.grey[300],
            endIndent: 100,
          ),
        )
      ],
    );
  }

  Widget _getBody() {
    return Container(
      height: MediaQuery.of(context).size.height - 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      child: Row(
                        children: [
                          Text(
                            _label,
                            style: labelStyle,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Icon(
                              Icons.arrow_forward,
                              size: 16,
                              color: Colors.green,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        "Rugs add a sense of comfort to your spaces, define a "
                            "seating area and soften your steps in the corridors. "
                            "Choose our area rugs and more in a style to match the"
                            "aesthetics of your home",
                        style: descriptionStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        "An innovative rug is good news as summer winds down "
                            "Refresh any room with a new rug and give your floor "
                            "space a fresh look. Your rug can be your favourite spot "
                            "in your home again, just like when you were a kid.",
                        style: descriptionStyle,
                      ),
                    )
                  ],
                ),
              )),
          Expanded(
            flex: 1,
            child: Container(
              child: Stack(
                clipBehavior: Clip.none,
                fit: StackFit.passthrough,
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Card(
                      elevation: 20,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.asset(
                          'web/assets/images/banner_image_1.jpg',
                          height: 300,
                          width: 250,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 260,
                    child: Card(
                      elevation: 20,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'web/assets/images/banner_img_3.jpg',
                          height: 300,
                          width: 250,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
