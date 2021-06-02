import 'package:flutter/material.dart';
import 'package:traveller_app_flutter/components/place_card.dart';
import 'package:traveller_app_flutter/constants.dart';
import 'package:traveller_app_flutter/models/TravelSpot.dart';
import 'package:traveller_app_flutter/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 10, bottom: 25),
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              runSpacing: 20,
              children: [
                ...List.generate(
                  travelSpots.length,
                  (index) => PlaceCard(
                    travelSpot: travelSpots[index],
                    press: () {},
                    isFullCard: true,
                  ),
                ),
                Container(
                  height: getProportionateScreenWidth(340),
                  width: getProportionateScreenWidth(178),
                  decoration: BoxDecoration(
                    color: Color(0xFF6A6C93).withOpacity(0.09),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 2, color: Color(0xFFEBE8F6)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: getProportionateScreenWidth(53),
                        width: getProportionateScreenWidth(53),
                        child: TextButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: getProportionateScreenWidth(35),
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: kPrimaryColor,
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60)),
                          ),
                        ),
                      ),
                      VerticalSpacing(of: 10),
                      Text(
                        "Add New Place",
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
