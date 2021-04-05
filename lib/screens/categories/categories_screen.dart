import 'package:flutter/material.dart';
import 'package:flutter_app_pd/screens/common/footer_widget.dart';
import 'package:flutter_app_pd/screens/common/top_navigation_bar_widget.dart';
import 'package:flutter_app_pd/styles_custom/text_styles.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: screenPadding,
            child: Container(
              height: MediaQuery.of(context).size.height - 150,
              child: Column(
                children: [
                  TopNavigationWidget(currentIndex: 1,)
                ],
              ),
            ),
          ),
          FooterWidget()
        ],
      ),
    );
  }
}
