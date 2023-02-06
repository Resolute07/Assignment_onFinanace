import 'package:assignment_onfinance/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HistoricalYeildContainer extends StatefulWidget {
  const HistoricalYeildContainer({super.key});

  @override
  State<HistoricalYeildContainer> createState() =>
      _HistoricalYeildContainerState();
}

class _HistoricalYeildContainerState extends State<HistoricalYeildContainer> {
  int? groupValue = 0;

  double _currentValue1 = 1;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final double text = MediaQuery.of(context).textScaleFactor;
    print(text);

    return Container(
      width: MediaQuery.of(context).size.width,
      height: height / 1.74,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: height / 25.57,
            child: SizedBox(
              width: width,
              child: Image.asset(
                'assets/images/first.jpg',
                width: width,
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: height / 25.57,
            child: Align(
              child: SizedBox(
                child: Image.asset(
                  'assets/images/top.png',
                  width: width,
                ),
              ),
            ),
          ),
          Positioned(
            left: width / 9.28,
            top: height / 19.18,
            child: Align(
              child: Container(
                height: height / 422,
                width: MediaQuery.of(context).size.width / 1.27,
                color: AppColors.primaryColor,
              ),
            ),
          ),
          Positioned(
            left: width / 32.5,
            top: height / 14.55,
            child: Container(
              height: height / 1.98,
              width: width / 1.06,
              color: Color(0xFF060607),
              child: Stack(
                children: [
                  Positioned(
                    left: width / 11.47,
                    top: height / 26.37,
                    child: Align(
                      child: SizedBox(
                        width: width / 1.56,
                        height: height / 36.69,
                        child: Text(
                          'If You would have Invested',
                          style: TextStyle(
                            fontSize: 18 * text,
                            fontWeight: FontWeight.w400,
                            color: AppColors.fadeFontColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: width / 2.53,
                    top: height / 10.96,
                    child: Align(
                      child: Container(
                        child: Slider(
                            inactiveColor: AppColors.backgroundColor,
                            thumbColor: AppColors.whiteColor,
                            activeColor: AppColors.blueColor,
                            value: _currentValue1,
                            onChanged: (value) {
                              setState(() {
                                _currentValue1 = value;
                              });
                            }),
                      ),
                    ),
                  ),
                  Positioned(
                    left: width / 2.53,
                    top: height / 4.69,
                    child: Align(
                      child: Container(
                        child: Slider(
                            inactiveColor: AppColors.backgroundColor,
                            thumbColor: AppColors.whiteColor,
                            activeColor: AppColors.blueColor,
                            value: _currentValue1,
                            onChanged: (value) {
                              setState(() {
                                _currentValue1 = value;
                              });
                            }),
                      ),
                    ),
                  ),
                  Positioned(
                    left: width / 11.47,
                    top: height / 6.03,
                    child: Align(
                      child: SizedBox(
                        width: width / 1.56,
                        height: height / 36.69,
                        child: Text(
                          'For previous',
                          style: TextStyle(
                            fontSize: 18 * text,
                            fontWeight: FontWeight.w400,
                            color: AppColors.fadeFontColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: width / 11.47,
                    top: height / 9.93,
                    child: Align(
                      child: SizedBox(
                        width: width / 1.56,
                        height: height / 36.70,
                        child: Text(
                          '\$100000',
                          style: TextStyle(
                            fontSize: 24 * text,
                            fontWeight: FontWeight.bold,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: width / 11.47,
                    top: height / 4.44,
                    child: SizedBox(
                      width: width / 1.56,
                      height: height / 36.69,
                      child: Text(
                        '1 Year',
                        style: TextStyle(
                          fontSize: 24 * text,
                          fontWeight: FontWeight.bold,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: width / 11.47,
                    top: height / 3.37,
                    child: Align(
                      child: SizedBox(
                        width: width / 1.56,
                        height: height / 36.69,
                        child: Text(
                          'You would have',
                          style: TextStyle(
                            fontSize: 18 * text,
                            fontWeight: FontWeight.w400,
                            color: AppColors.fadeFontColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: height / 19.62,
                    left: width / 3.02,
                    child: SizedBox(
                      height: height / 7.67,
                      width: width / 1.82,
                      child: Image.asset(
                        'assets/images/upperdotted.png',
                        height: height / 7.67,
                        width: width / 1.82,
                      ),
                    ),
                  ),
                  Positioned(
                    top: height / 5.52,
                    left: -width / 5.13,
                    child: SizedBox(
                      height: height / 7.67,
                      width: width / 1.82,
                      child: Image.asset(
                        'assets/images/leftSideDotted.png',
                        height: height / 7.81,
                        width: width / 55.71,
                      ),
                    ),
                  ),
                  Positioned(
                    left: width / 11.81,
                    top: height / 2.81,
                    child: Row(
                      children: [
                        Text(
                          '\$1120.78',
                          style: TextStyle(
                              color: AppColors.whiteColor, fontSize: 22 * text),
                        ),
                        SizedBox(
                          width: width / 78,
                        ),
                        Text(
                          '1205.67 MATIC',
                          style: TextStyle(
                              color: AppColors.blueColor, fontSize: 16 * text),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      left: width / 13.92,
                      top: height / 2.38,
                      child: Container(
                        child: CupertinoSlidingSegmentedControl<int>(
                            groupValue: groupValue,
                            backgroundColor: AppColors.primarybackgroundColor,
                            thumbColor: AppColors.blueColor,
                            onValueChanged: (groupValue) => {
                                  setState(() {
                                    this.groupValue = groupValue;
                                  })
                                },
                            children: {
                              0: buildSegment('MATIC'),
                              1: buildSegment('BTC'),
                              2: buildSegment('ETH'),
                            }),
                      ))
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: width / 4.48,
            child: Align(
              child: Container(
                height: height / 19.18,
                width: width / 1.81,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(11),
                      topRight: Radius.circular(11)),
                  color: Color(0xFF282831),
                ),
                child: Center(
                    child: Text(
                  'Historical Yeild',
                  style: TextStyle(color: Color(0xFFFFFFFF)),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildSegment(String text) => Container(
      margin: EdgeInsets.symmetric(horizontal: 18),
      child: Text(
        '$text',
        style: TextStyle(color: AppColors.whiteColor),
      ),
    );
