import 'package:flutter/material.dart';
import 'package:technical_service/ui/helper/color.dart';
import 'package:technical_service/ui/helper/responsive.dart';

class HomeTaskCard extends StatelessWidget {
  final double? width;
  final IconData icon;
  final String? name;
  final String number;
  final double? height;
  final double? borderWidth;
  final Color? cardColor;
  final VoidCallback onPressed;
  const HomeTaskCard({
    Key? key,
    this.width,
    this.height,
    this.borderWidth,
    this.cardColor,
    required this.onPressed,
    required this.number,
    required this.icon,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                  offset: Offset(
                    0,
                    2.4,
                  ),
                  color: blackColor.withOpacity(.5),
                  blurRadius: 10),
            ]),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      topLeft: Radius.circular(20.0),
                    ),
                    color: cardColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        icon,
                        color: whiteColor,
                        size: getProportionateScreenWidth(60.0),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            number,
                            style: TextStyle(
                                color: whiteColor,
                                fontSize: getProportionateScreenWidth(27.0)),
                          ),
                          Text(
                            name!,
                            style: TextStyle(
                                color: whiteColor,
                                fontSize: getProportionateScreenWidth(15.0)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tümünü Gör",
                        style: TextStyle(
                            color: cardColor,
                            fontSize: getProportionateScreenWidth(12.0)),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: cardColor,
                            size: getProportionateScreenWidth(16.0),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
