import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_pd/widgets/home/banner_row_widget.dart';
import 'package:flutter_app_pd/widgets/home/btn_view_categories_widget.dart';
import 'package:flutter_app_pd/widgets/home/category_one_widget.dart';
import 'package:flutter_app_pd/widgets/home/category_three_widget.dart';
import 'package:flutter_app_pd/widgets/home/category_two_widget.dart';
import 'package:flutter_app_pd/widgets/home/footer_widget.dart';
import 'package:flutter_app_pd/widgets/home/services_widget.dart';
import 'package:flutter_app_pd/widgets/top_navigation_bar_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'WorkSans'),
      home: MyHomePage(title: 'Persian Dowery'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 64),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TopNavigationWidget(),
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
        ));
  }
}
