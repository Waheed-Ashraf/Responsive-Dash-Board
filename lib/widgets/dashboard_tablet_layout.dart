import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';
import 'package:responsive_dash_board/widgets/custom_container.dart';
import 'package:responsive_dash_board/widgets/custom_drower.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/my_card_section.dart';
import 'package:responsive_dash_board/widgets/quick_invoice.dart';
import 'package:responsive_dash_board/widgets/transaction_history_section.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 6, child: CustomDrower()),
        Expanded(
          flex: 13,
          child: Padding(
            padding: EdgeInsets.all(24),
            child: SingleChildScrollView(
              child: Column(children: [
                AllExpenses(),
                SizedBox(
                  height: 24,
                ),
                QuickInvoice(),
                CustomContainer(
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
                SizedBox(
                  height: 24,
                ),
                IncomeSection(),
              ]),
            ),
          ),
        ),
      ],
    );
  }
}
