import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_pd/widgets/home/banner_row_widget.dart';
import 'package:flutter_app_pd/widgets/home/category_one_widget.dart';
import 'package:flutter_app_pd/widgets/home/category_two_widget.dart';
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
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 64),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TopNavigationWidget(),
                BannerRowWidget(),
                CategoryOneWidget(),
                CategoryTwoWidget(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Browse Categories",
                            style: TextStyle(
                                fontFamily: "WorkSans",
                                fontStyle: FontStyle.normal,
                                color: Colors.white,
                                fontSize: 20),
                          )
                        ],
                      ),
                    ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.green)),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
