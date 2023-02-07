import 'package:assignment_onfinance/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ChartSection extends StatefulWidget {
  const ChartSection({super.key});

  @override
  State<ChartSection> createState() => _ChartSectionState();
}

class _ChartSectionState extends State<ChartSection> {
  String? value;
  final Items = ['MA Moving Avg', 'item2', 'item3'];
  bool? isChecked = false;
  bool isClicked = true;
  int? groupValue = 0;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Container(
      height: 448,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: width / 39,
              ),
              Card(
                color: AppColors.primaryColor,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: width / 26,
                      right: width / 26,
                      top: height / 168.8,
                      bottom: height / 168.8),
                  child: Text(
                    '2.79%',
                    style: TextStyle(
                      color: AppColors.cyanColor,
                      fontSize: height / 60.28,
                    ),
                  ),
                ),
              ),
              Card(
                color: AppColors.cardColor,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: width / 26,
                      right: width / 26,
                      top: height / 168.8,
                      bottom: height / 168.8),
                  child: Text(
                    isClicked ? 'Ascending Angle' : 'MA',
                    style: TextStyle(
                        color: AppColors.lightblueColor,
                        fontSize: height / 70.3),
                  ),
                ),
              ),
              Card(
                color: AppColors.cardColor,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: width / 26,
                      right: width / 26,
                      top: height / 168.8,
                      bottom: height / 168.8),
                  child: Text(
                    isClicked ? 'High Exposure ' : 'RSI',
                    style: TextStyle(color: AppColors.RedColor, fontSize: 12),
                  ),
                ),
              )
            ],
          ),
          isClicked
              ? Image.asset('assets/images/linegraph.png')
              : Image.asset(
                  'assets/images/candlestick.png',
                  height: 328,
                  width: 365,
                ),
          !isClicked
              ? Row(
                  children: [
                    SizedBox(
                      width: width / 1.5,
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              decoration: BoxDecoration(
                                  color: AppColors.BottomSheetColor,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(14),
                                      topRight: Radius.circular(14))),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Indicator',
                                          style: TextStyle(
                                              color: AppColors.lightblueColor,
                                              fontSize: 20),
                                        ),
                                        CircleAvatar(
                                          backgroundColor: AppColors.cardColor,
                                          child: Icon(
                                            Icons.cancel_outlined,
                                            color: AppColors.whiteColor,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 1,
                                    color: AppColors.LineColor,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Card(
                                    color: AppColors.primaryColor,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15,
                                          right: 15,
                                          top: 5,
                                          bottom: 5),
                                      child: Text(
                                        'MA',
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 2, 162, 255),
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Checkbox(
                                        value: isChecked,
                                        onChanged: (newBool) {
                                          setState(
                                            () {
                                              isChecked = newBool;
                                            },
                                          );
                                        },
                                      ),
                                      Container(
                                        height: 38,
                                        width: 323,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                                color: Color(0xFF303030))),
                                        child: DropdownButton(
                                          underline: SizedBox(),
                                          focusColor: Color(0xFF282830),
                                          dropdownColor: Color(0xFF282830),
                                          isExpanded: true,
                                          value: value,
                                          items: Items.map(buildMenuItems)
                                              .toList(),
                                          onChanged: (value) =>
                                              this.value = value,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Checkbox(
                                        value: isChecked,
                                        onChanged: (newBool) {
                                          setState(
                                            () {
                                              isChecked = newBool;
                                            },
                                          );
                                        },
                                      ),
                                      Container(
                                        height: 38,
                                        width: 323,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                                color: Color(0xFF303030))),
                                        child: DropdownButton(
                                          underline: SizedBox(),
                                          focusColor: Color(0xFF282830),
                                          dropdownColor: Color(0xFF282830),
                                          isExpanded: true,
                                          value: value,
                                          items: Items.map(buildMenuItems)
                                              .toList(),
                                          onChanged: (value) =>
                                              this.value = value,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Checkbox(
                                        focusColor: Color(0xffffffff),
                                        value: isChecked,
                                        onChanged: (newBool) {
                                          setState(
                                            () {
                                              isChecked = newBool;
                                            },
                                          );
                                        },
                                      ),
                                      Container(
                                        height: 38,
                                        width: 323,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                                color: Color(0xFF303030))),
                                        child: DropdownButton(
                                          underline: SizedBox(),
                                          focusColor: Color(0xFF282830),
                                          dropdownColor: Color(0xFF282830),
                                          isExpanded: true,
                                          value: value,
                                          items: Items.map(buildMenuItems)
                                              .toList(),
                                          onChanged: (value) =>
                                              this.value = value,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Card(
                        color: AppColors.backgroundColor,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 5, bottom: 5),
                          child: Text(
                            'Indicators',
                            style: TextStyle(
                                color: AppColors.whiteColor, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              : SizedBox(
                  height: 1,
                ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CupertinoSlidingSegmentedControl<int>(
                  groupValue: groupValue,
                  backgroundColor: AppColors.primaryColor,
                  thumbColor: AppColors.blueColor,
                  onValueChanged: (groupValue) => {
                        setState(() {
                          this.groupValue = groupValue;
                        })
                      },
                  children: {
                    0: buildSegment1('1H'),
                    1: buildSegment1('1D'),
                    2: buildSegment1('1W'),
                    3: buildSegment1('1M'),
                    4: buildSegment1('5Y'),
                  }),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isClicked = !isClicked;
                  });
                },
                child: Container(
                  height: 49,
                  width: 49,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color(0xFF070707)),
                  child: isClicked
                      ? Image.asset('assets/images/candele.png')
                      : Image.asset('assets/images/linegraph.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget buildSegment1(String text) => Container(
      margin: EdgeInsets.symmetric(horizontal: 9, vertical: 14),
      child: Text(
        '$text',
        style: TextStyle(color: AppColors.whiteColor),
      ),
    );
DropdownMenuItem<String> buildMenuItems(String item) => DropdownMenuItem(
    value: item,
    child: Padding(
      padding: EdgeInsets.all(5),
      child: Text(
        item,
        style: TextStyle(fontSize: 16, color: AppColors.whiteColor),
      ),
    ));
