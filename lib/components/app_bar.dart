import 'package:flutter/material.dart';
import 'package:traveller_app_flutter/constants.dart';

AppBar buildAppBar({bool isTransparant = false, String? title}) {
  return AppBar(
    backgroundColor: (isTransparant) ? Colors.transparent : Colors.white,
    elevation: 0,
    centerTitle: true,
    title: Text(
      (title) ?? "",
      style: TextStyle(
        color: kTextColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    leading: IconButton(
      icon: Icon(
        Icons.menu,
        color: kIconColor,
      ),
      onPressed: () {},
    ),
    actions: [
      IconButton(
        icon: ClipOval(child: Image.asset("assets/images/profile.png")),
        onPressed: () {},
      ),
    ],
  );
}
