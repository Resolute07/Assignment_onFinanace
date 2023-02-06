import 'package:assignment_onfinance/utils/colors.dart';
import 'package:flutter/material.dart';

class AnalystExpandable extends StatefulWidget {
  const AnalystExpandable({super.key});

  @override
  State<AnalystExpandable> createState() => _AnalystExpandableState();
}

class _AnalystExpandableState extends State<AnalystExpandable> {
  bool _isExpanded = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: _isExpanded ? 216 : 503,
      width: 366,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.primaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Analyst Rating ',
                  style: TextStyle(color: AppColors.whiteColor, fontSize: 20),
                ),
                Icon(
                  Icons.star,
                  color: AppColors.cyanColor,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: AppColors.backgroundColor),
              ),
              width: 317,
              height: 35,
              child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 130,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.backgroundColor),
                    ),
                    child: Center(
                      child: Text(
                        '94,000',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: AppColors.whiteColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 1,
              color: AppColors.LineColor,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Strong \n  Buy',
                  style: TextStyle(
                    color: AppColors.whiteColor,
                  ),
                ),
                Text(
                  'Buy',
                  style: TextStyle(
                    color: AppColors.fadeFontColor,
                  ),
                ),
                Text(
                  'Hold',
                  style: TextStyle(
                    color: AppColors.fadeFontColor,
                  ),
                ),
                Text(
                  'Sell',
                  style: TextStyle(
                    color: AppColors.fadeFontColor,
                  ),
                ),
                Text(
                  'Strong\n  Sell',
                  style: TextStyle(
                    color: AppColors.fadeFontColor,
                  ),
                ),
              ],
            ),
            !_isExpanded
                ? Container(
                    height: 290,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 1,
                          color: AppColors.LineColor,
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '64%',
                              style: TextStyle(
                                  color: AppColors.cyanColor,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Buy Rating',
                              style: TextStyle(
                                  color: AppColors.cyanColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 1,
                          color: AppColors.LineColor,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Top Bulls',
                              style: TextStyle(color: AppColors.fadeFontColor),
                            ),
                            Text(
                              'Historical Accuracy',
                              style: TextStyle(color: AppColors.fadeFontColor),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'HDFC Asset Mngt. Co',
                              style: TextStyle(color: AppColors.whiteColor),
                            ),
                            Text(
                              '86%',
                              style: TextStyle(color: AppColors.whiteColor),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Solar Industries',
                              style: TextStyle(color: AppColors.whiteColor),
                            ),
                            Text(
                              '92%',
                              style: TextStyle(color: AppColors.whiteColor),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Top Bulls',
                              style: TextStyle(color: AppColors.fadeFontColor),
                            ),
                            Text(
                              '',
                              style: TextStyle(color: AppColors.fadeFontColor),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'United Spirits',
                              style: TextStyle(color: AppColors.whiteColor),
                            ),
                            Text(
                              '86%',
                              style: TextStyle(color: AppColors.whiteColor),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Home First Finance',
                              style: TextStyle(color: AppColors.whiteColor),
                            ),
                            Text(
                              '92%',
                              style: TextStyle(color: AppColors.whiteColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                : SizedBox(),
            GestureDetector(
              onTap: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              child: Icon(
                _isExpanded
                    ? Icons.keyboard_arrow_down
                    : Icons.keyboard_arrow_up,
                color: AppColors.fadeFontColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
