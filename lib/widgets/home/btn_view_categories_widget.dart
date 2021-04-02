import 'package:flutter/material.dart';
import 'package:flutter_app_pd/styles_custom/colors.dart';

class ButtonViewCategories extends StatefulWidget {
  @override
  _ButtonViewCategoriesState createState() => _ButtonViewCategoriesState();
}

class _ButtonViewCategoriesState extends State<ButtonViewCategories> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Browse all",
              style: TextStyle(
                  fontSize: 20, fontFamily: 'WorkSans', color: colorPrimary),
            ),
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: colorSecondary,
            child: Icon(Icons.arrow_forward),
          )
        ],
      ),
    );
  }
}
