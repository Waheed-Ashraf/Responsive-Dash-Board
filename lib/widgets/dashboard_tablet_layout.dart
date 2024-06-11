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
          child: SingleChildScrollView(
            child: Column(children: [
              AllExpenses(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: QuickInvoice(),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 24, right: 24, left: 24),
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
              Padding(
                padding: EdgeInsets.only(left: 24),
                child: IncomeSection(),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
