import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_header.dart';
import 'package:responsive_dash_board/widgets/custom_container.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';
import 'package:responsive_dash_board/widgets/my_card_section.dart';
import 'package:responsive_dash_board/widgets/transaction_history_section.dart';

class RightSection extends StatelessWidget {
  const RightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 24, bottom: 24, right: 24),
            child: CustomContainer(
              padding: 0,
              child: Column(
                children: [
                  MyCardSection(),
                  Divider(
                    height: 40,
                    color: Color(0xffF1F1F1),
                  ),
                  TransactionHistorySection(),
                ],
              ),
            ),
          ),
          IncomeSection(),
        ],
      ),
    );
  }
}

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 24, right: 24),
      child: CustomContainer(
        padding: 0,
        child: Column(
          children: [
            CustomHeader(
              title: "Income",
              buttonIcon: Icons.keyboard_arrow_down,
              buttonTitle: 'Monthly',
            ),
            IncomeChart(),
          ],
        ),
      ),
    );
  }
}
