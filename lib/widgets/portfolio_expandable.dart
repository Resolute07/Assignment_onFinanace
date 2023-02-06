import 'package:flutter/material.dart';

class PortfolioExpanded extends StatelessWidget {
  const PortfolioExpanded({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 127,
      width: 366,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xFF0000000),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 16, left: 20, right: 20),
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
                      fontSize: 16),
                ),
                Text(
                  '₹ 14,69,073 ',
                  style: TextStyle(color: Color(0xFFFFFFFF)),
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 1,
              color: Color(0xFF15151B),
            ),
            SizedBox(
              height: 10,
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
                      style: TextStyle(color: Color(0xFF61616A), fontSize: 10),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      '\$6400',
                      style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 10),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'QUANTITY',
                      style: TextStyle(color: Color(0xFF61616A), fontSize: 10),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      '1.5',
                      style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 10),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'BROKER',
                      style: TextStyle(color: Color(0xFF61616A), fontSize: 10),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Etherium',
                      style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 10),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
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
