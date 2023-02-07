import 'package:flutter/material.dart';

class PortfolioExpanded extends StatelessWidget {
  const PortfolioExpanded({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height / 6.64,
      width: width / 1.06,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xFF0000000),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            top: height / 52.75, left: width / 19.5, right: width / 19.5),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your Portfolio Exposure',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF8B545),
                      fontSize: height / 52.75),
                ),
                Text(
                  '₹ 14,69,073 ',
                  style: TextStyle(
                      color: Color(0xFFFFFFFF), fontSize: height / 52.75),
                )
              ],
            ),
            SizedBox(
              height: height / 52.75,
            ),
            Container(
              height: height / 844,
              color: Color(0xFF15151B),
            ),
            SizedBox(
              height: height / 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'INVESTED',
                      style: TextStyle(
                          color: Color(0xFF61616A), fontSize: height / 84.4),
                    ),
                    SizedBox(
                      height: height / 105.5,
                    ),
                    Text(
                      '\$6400',
                      style: TextStyle(
                          color: Color(0xFFFFFFFF), fontSize: height / 84.4),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'QUANTITY',
                      style: TextStyle(
                          color: Color(0xFF61616A), fontSize: height / 84.4),
                    ),
                    SizedBox(
                      height: height / 105.5,
                    ),
                    Text(
                      '1.5',
                      style: TextStyle(
                          color: Color(0xFFFFFFFF), fontSize: height / 84.4),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'BROKER',
                      style: TextStyle(
                          color: Color(0xFF61616A), fontSize: height / 84.4),
                    ),
                    SizedBox(
                      height: height / 105.5,
                    ),
                    Text(
                      'Etherium',
                      style: TextStyle(
                          color: Color(0xFFFFFFFF), fontSize: height / 84.4),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: height / 180,
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Color(0xFF61616A),
            )
          ],
        ),
      ),
    );
  }
}
