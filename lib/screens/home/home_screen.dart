import 'package:flutter/material.dart';
import 'package:flutter_app_pd/screens/common/footer_widget.dart';
import 'package:flutter_app_pd/screens/common/top_navigation_bar_widget.dart';
import 'package:flutter_app_pd/screens/home/widget/banner_row_widget.dart';
import 'package:flutter_app_pd/screens/home/widget/btn_view_categories_widget.dart';
import 'package:flutter_app_pd/screens/home/widget/category_one_widget.dart';
import 'package:flutter_app_pd/screens/home/widget/category_three_widget.dart';
import 'package:flutter_app_pd/screens/home/widget/category_two_widget.dart';
import 'package:flutter_app_pd/screens/home/widget/services_widget.dart';
import 'package:flutter_app_pd/styles_custom/text_styles.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: screenPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TopNavigationWidget(currentIndex: 0,),
                BannerRowWidget(),
                CategoryThreeWidget(),
                CategoryOneWidget(),
                CategoryTwoWidget(),
                ButtonViewCategories(),
                ServicesWidget(),
              ],
            ),
          ),
          FooterWidget()
        ],
      ),
    );
  }
}
