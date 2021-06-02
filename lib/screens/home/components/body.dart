import 'package:flutter/material.dart';
import 'package:traveller_app_flutter/screens/home/components/home_header.dart';
import 'package:traveller_app_flutter/screens/home/components/popular_places.dart';
import 'package:traveller_app_flutter/screens/home/components/top_travelers.dart';
import 'package:traveller_app_flutter/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      child: Column(
        children: [
          HomeHeader(),
          VerticalSpacing(),
          PopularPlaces(),
          VerticalSpacing(),
          TopTravelers(),
          VerticalSpacing(),
        ],
      ),
    );
  }
}
