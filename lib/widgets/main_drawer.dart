import 'package:flutter/material.dart';
import '../screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget selectListTile(
        String title, IconData icn, Function tapHandler, Color clr) {
      return ListTile(
        leading: Icon(
          icn,
          size: 26,
          color: Colors.black,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: clr,
          ),
        ),
        onTap: tapHandler,
      );
    }

    return Drawer(
      backgroundColor: Colors.amber,
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).primaryColor,
            child: Text(
              'FOODIES!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 28,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          selectListTile('Meals', Icons.restaurant, () {
            Navigator.of(context).pushReplacementNamed('/');
          }, Colors.black),
          selectListTile('Filters', Icons.settings, () {
            Navigator.of(context).pushReplacementNamed(FilterScreen.routeName);
          }, Colors.black),
        ],
      ),
    );
  }
}
