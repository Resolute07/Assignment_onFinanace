import 'package:assignment_onfinance/utils/colors.dart';
import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Container(
      height: height / 1.04,
      width: width,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
      ),
      child: Padding(
        padding: EdgeInsets.only(
            top: height / 13.83, left: width / 13, right: width / 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About MATIC',
              style:
                  TextStyle(color: Color(0xFF3455FF), fontSize: height / 42.2),
            ),
            SizedBox(
              height: height / 22.81,
            ),
            AboutRow(
              About: 'Market Cap',
              value: '65,195 Cr',
            ),
            SizedBox(
              height: height / 120.57,
            ),
            Container(
              height: height / 844,
              color: Color(0xFF1C1C1C),
            ),
            SizedBox(
              height: height / 56.26,
            ),
            AboutRow(
              About: 'Revenue',
              value: '789,112.84 Cr',
            ),
            SizedBox(
              height: height / 120.57,
            ),
            Container(
              height: height / 844,
              color: AppColors.LineColor,
            ),
            SizedBox(
              height: height / 56.26,
            ),
            AboutRow(
              About: 'P/E Ratio',
              value: '30.2',
            ),
            SizedBox(
              height: height / 120.57,
            ),
            Container(
              height: height / 844,
              color: AppColors.LineColor,
            ),
            SizedBox(
              height: height / 56.26,
            ),
            AboutRow(
              About: 'Profit',
              value: '1098.48 Cr',
            ),
            SizedBox(
              height: height / 120.57,
            ),
            Container(
              height: height / 844,
              color: AppColors.LineColor,
            ),
            SizedBox(
              height: height / 56.26,
            ),
            AboutRow(
              About: 'Dividend Yeild',
              value: '1.92',
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              height: height / 844,
              color: AppColors.LineColor,
            ),
            SizedBox(
              height: height / 22.81,
            ),
            Text(
              'Technical Indicators',
              style: TextStyle(
                  color: AppColors.blueColor, fontSize: height / 42.2),
            ),
            SizedBox(
              height: height / 22.81,
            ),
            IndColumn(
              header: 'Cummulative Market Sentiment',
              value: '62.43',
              desc:
                  "This measures the sentiment of the investors for that particular stock or boin based on all the news articles, blogs, research papers, financial content featuring it.",
            ),
            SizedBox(
              height: 25,
            ),
            IndColumn(
                desc:
                    'This measures the price movement of the securities, tell us if the stock or coin is overbought (above 70) or oversold (below 30)',
                header: 'Relative Strength Index (RSI)',
                value: '37.88'),
            SizedBox(
              height: 25,
            ),
            IndColumn(
                desc:
                    'This measures how much the stock or coin price is moving in any of the directions (upwards, downwards or directional) with respect to time.',
                header: 'Volatility',
                value: '0.54')
          ],
        ),
      ),
    );
  }
}

class IndColumn extends StatelessWidget {
  final String? header;
  final String? value;
  final String? desc;
  const IndColumn(
      {super.key,
      required this.desc,
      required this.header,
      required this.value});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$header',
              style: TextStyle(
                  color: AppColors.whiteColor, fontSize: height / 46.89),
            ),
            Text(
              '$value',
              style: TextStyle(
                  color: AppColors.cyanColor, fontSize: height / 46.89),
            ),
          ],
        ),
        SizedBox(
          height: 11,
        ),
        Text(
          '$desc',
          style: TextStyle(
              color: AppColors.fadeFontColor, fontSize: height / 60.28),
        ),
      ],
    );
  }
}

class AboutRow extends StatelessWidget {
  final String? About;
  final String? value;
  const AboutRow({super.key, this.About, this.value});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$About',
          style: TextStyle(
              color: AppColors.fadeFontColor, fontSize: height / 46.89),
        ),
        Text(
          '$value',
          style:
              TextStyle(color: AppColors.whiteColor, fontSize: height / 46.89),
        ),
      ],
    );
  }
}
