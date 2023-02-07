import 'package:assignment_onfinance/widgets/about_section.dart';
import 'package:assignment_onfinance/widgets/analyst_expandable.dart';
import 'package:assignment_onfinance/widgets/bottomappbar.dart';
import 'package:assignment_onfinance/utils/colors.dart';
import 'package:assignment_onfinance/widgets/chart_section.dart';
import 'package:assignment_onfinance/widgets/portfolio_expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/historical_yeild_container.dart';
import '../widgets/price_section.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  bool _isTapped = true;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.primarybackgroundColor,
          appBar: AppBar(
            actions: [
              GestureDetector(
                onTap: (() {
                  setState(() {
                    _isTapped = !_isTapped;
                  });
                }),
                child: CircleAvatar(
                  child: Icon(
                    Icons.save_alt,
                    color: _isTapped
                        ? AppColors.whiteColor
                        : AppColors.yellowColor,
                  ),
                  backgroundColor: Color(0xFF17171D),
                ),
              ),
              SizedBox(
                width: width / 19.5,
              )
            ],
            backgroundColor: AppColors.primaryColor,
            title: const Text("Polygon"),
            leading: const Icon(Icons.arrow_back_ios),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                PriceSection(),
                SizedBox(
                  height: height / 84.4,
                ),
                ChartSection(),
                SizedBox(
                  height: height / 106.83,
                ),
                AnalystExpandable(),
                SizedBox(
                  height: height / 21.64,
                ),
                PortfolioExpanded(),
                SizedBox(
                  height: 21.1,
                ),
                HistoricalYeildContainer(),
                SizedBox(
                  height: height / 28.13,
                ),
                AboutSection()
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(
              color: AppColors.primaryColor, child: BottomAppBarCustom())),
    );
  }
}
