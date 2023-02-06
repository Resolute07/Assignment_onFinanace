import 'package:flutter/material.dart';

import '../utils/colors.dart';

class PriceSection extends StatelessWidget {
  const PriceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 94,
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(14),
              bottomLeft: Radius.circular(14))),
      child: Row(
        children: [
          const SizedBox(
            width: 25,
          ),
          const CircleAvatar(
            radius: 25,
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/polygon-token.png"),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '₹94.634',
                style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: AppColors.whiteColor),
              ),
              Text("MATIC",
                  style: TextStyle(fontSize: 17, color: AppColors.blueColor))
            ],
          ),
          const SizedBox(
            width: 80,
          ),
          Card(
            color: AppColors.whiteColor,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Discuss >>'),
            ),
          )
        ],
      ),
    );
  }
}
