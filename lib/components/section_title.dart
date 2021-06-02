import 'package:flutter/material.dart';
import 'package:traveller_app_flutter/constants.dart';
import 'package:traveller_app_flutter/size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    @required this.title,
    @required this.press,
    @required this.rightTitle,
  }) : super(key: key);

  final String? title;
  final String? rightTitle;
  final GestureTapCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(kDefaultPadding),
      ),
      child: Row(
        children: [
          Text(
            title!,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: press,
            child: Text(rightTitle!),
          ),
        ],
      ),
    );
  }
}
