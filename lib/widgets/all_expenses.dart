import 'package:flutter/material.dart';

import 'package:responsive_dash_board/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/widgets/all_expensis_list.dart';
import 'package:responsive_dash_board/widgets/custom_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [
          AllExpensesHeader(
            title: "All Expenses",
            buttonIcon: Icons.keyboard_arrow_down,
            buttonTitle: "Monthly",
          ),
          SizedBox(
            height: 20,
          ),
          AllExpensisList(),
        ],
      ),
    );
  }
}
