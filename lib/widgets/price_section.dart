import 'package:flutter/material.dart';

import '../utils/colors.dart';

class PriceSection extends StatelessWidget {
  const PriceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Container(
      height: height / 8.97,
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(height / 60.28),
              bottomLeft: Radius.circular(height / 60.28))),
      child: Row(
        children: [
          SizedBox(
            width: width / 15.6,
          ),
          CircleAvatar(
            radius: width / 15.6,
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/polygon-token.png"),
            ),
          ),
          SizedBox(
            width: width / 39,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '₹94.634',
                style: TextStyle(
                    fontSize: height / 40.19,
                    fontWeight: FontWeight.bold,
                    color: AppColors.whiteColor),
              ),
              Text("MATIC",
                  style: TextStyle(
                      fontSize: height / 49.64, color: AppColors.blueColor))
            ],
          ),
          SizedBox(
            width: height / 10.55,
          ),
          Card(
            color: AppColors.whiteColor,
            child: Padding(
              padding: EdgeInsets.all(height / 105.5),
              child: Text('Discuss >>'),
            ),
          )
        ],
      ),
    );
  }
}
