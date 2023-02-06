import 'package:assignment_onfinance/utils/colors.dart';
import 'package:flutter/material.dart';

class BottomAppBarCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF000000),
      height: 113.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 42,
            width: 166,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.blueColor,
            ),
            child: Center(
              child: Text(
                'Buy',
                style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Container(
            height: 42,
            width: 166,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.whiteColor,
            ),
            child: Center(
              child: Text(
                'Sell',
                style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
          )
        ],
      ),
    );
  }
}
