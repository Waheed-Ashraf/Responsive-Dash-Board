import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';
import 'package:responsive_dash_board/widgets/custom_container.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/my_card_section.dart';
import 'package:responsive_dash_board/widgets/quick_invoice.dart';
import 'package:responsive_dash_board/widgets/transaction_history_section.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(children: [
        AllExpenses(),
        SizedBox(
          height: 16,
        ),
        QuickInvoice(),
        CustomContainer(
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
        SizedBox(
          height: 16,
        ),
        IncomeSection(),
      ]),
    );
  }
}
