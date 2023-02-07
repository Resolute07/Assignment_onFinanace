import 'package:assignment_onfinance/utils/colors.dart';
import 'package:flutter/material.dart';

class BottomAppBarCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Container(
      color: Color(0xFF000000),
      height: height / 7.46,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: height / 20.09,
            width: width / 2.34,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(height / 84.4),
              color: AppColors.blueColor,
            ),
            child: Center(
              child: Text(
                'Buy',
                style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: height / 52.75,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Container(
            height: height / 20.09,
            width: width / 2.34,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(height / 84.4),
              color: AppColors.whiteColor,
            ),
            child: Center(
              child: Text(
                'Sell',
                style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: height / 52.75,
                    fontWeight: FontWeight.w400),
              ),
            ),
          )
        ],
      ),
    );
  }
}
