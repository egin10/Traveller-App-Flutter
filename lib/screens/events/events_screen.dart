import 'package:flutter/material.dart';
import 'package:traveller_app_flutter/components/app_bar.dart';
import 'package:traveller_app_flutter/components/custom_nav_bar.dart';
import 'package:traveller_app_flutter/screens/events/components/body.dart';

class EventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: "New Events",
      ),
      body: Body(),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
