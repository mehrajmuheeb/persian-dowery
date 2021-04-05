import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_pd/styles_custom/colors.dart';
import 'package:flutter_app_pd/styles_custom/text_styles.dart';

class TopNavigationWidget extends StatefulWidget {

  final int currentIndex;
  TopNavigationWidget({@required this.currentIndex});
  @override
  _TopNavigationWidgetState createState() => _TopNavigationWidgetState(currentIndex);
}

class _TopNavigationWidgetState extends State<TopNavigationWidget>
    with SingleTickerProviderStateMixin {

  final int currentIndex;
  _TopNavigationWidgetState(this.currentIndex);

  int selectedIndex = 0;
  int hoverIndex = 0;
  List<String> menuItems = ["Home", "About", "Testimonial", "Contact"];
  Animation<double> _searchAnimation;
  AnimationController _searchController;
  bool _searchFlag = false;

  @override
  void initState() {
    super.initState();
    selectedIndex = currentIndex;
    _searchController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));

    _searchAnimation =
        CurvedAnimation(parent: _searchController, curve: Curves.easeOut);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(
            'web/assets/images/ic_logo.png',
            width: 25,
            height: 25,
          ),
          Spacer(
            flex: 1,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                menuItems.length, (index) => buildMenuItem(index)),
          ),
          InkWell(
            onTap: () {
              setState(() {
                if(_searchFlag) {
                  _searchFlag = false;
                  _searchController.forward();
                } else {
                  _searchFlag = true;
                  _searchController.reverse();
                }
              });
            },
            child: Icon(
              CupertinoIcons.search,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            decoration: BoxDecoration(
                color: colorSecondary,
                borderRadius: BorderRadius.all(Radius.circular(50))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                CupertinoIcons.bag_fill,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildMenuItem(int index) =>
      InkWell(
        onTap: () {
          setState(() {
            navigateScreen(index);
            selectedIndex = index;
          });
        },
        onHover: (value) {
          setState(() {
            value ? hoverIndex = index : hoverIndex = selectedIndex;
          });
        },
        child: Container(
          decoration: BoxDecoration(
              color: index == hoverIndex ? Colors.white : Colors.white),
          child: Row(
            children: [
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: AnimatedDefaultTextStyle(
                    duration: Duration(milliseconds: 100),
                    child: Text(
                      menuItems[index],
                    ),
                    style: TextStyle(
                        fontWeight:
                        index == selectedIndex || index == hoverIndex
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: index == selectedIndex || index == hoverIndex
                            ? 20
                            : 15,
                        color: colorPrimary,
                        fontStyle: FontStyle.normal,
                        fontFamily: 'WorkSans')),
              ),
            ],
          ),
        ),
      );

  void navigateScreen (int index) {
    switch(index) {
      case 0:
        Navigator.pushNamed(context, '/');
        return;
      case 1:
        Navigator.pushNamed(context, '/categories');
        return;
      case 2:
        Navigator.pushNamed(context, '/');
        return;
    }
  }
}
