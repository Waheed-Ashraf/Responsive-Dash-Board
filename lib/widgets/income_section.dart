import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/Income_details.dart';
import 'package:responsive_dash_board/widgets/custom_container.dart';
import 'package:responsive_dash_board/widgets/custom_header.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';

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
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(child: IncomeChart()),
                Expanded(flex: 2, child: IncomeDetails()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
