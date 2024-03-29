import 'package:flutter/material.dart';
import 'package:traveller_app_flutter/components/app_bar.dart';
import 'package:traveller_app_flutter/components/custom_nav_bar.dart';
import 'package:traveller_app_flutter/screens/home/components/body.dart';
import 'package:traveller_app_flutter/size_config.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
