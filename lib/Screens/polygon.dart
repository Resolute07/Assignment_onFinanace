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
                width: 20,
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
                  height: 10,
                ),
                ChartSection(),
                SizedBox(
                  height: 7.9,
                ),
                AnalystExpandable(),
                SizedBox(
                  height: 39,
                ),
                PortfolioExpanded(),
                SizedBox(
                  height: 40,
                ),
                HistoricalYeildContainer(),
                SizedBox(
                  height: 30,
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
