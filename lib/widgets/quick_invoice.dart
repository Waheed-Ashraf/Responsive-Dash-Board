import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/widgets/custom_container.dart';
import 'package:responsive_dash_board/widgets/latest_transaction_list.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_form.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: 0,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const AllExpensesHeader(
          title: "Quick Invoice",
          buttonIcon: Icons.add,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 24, bottom: 12),
          child: Text(
            "Latest Transaction",
            style: AppStyles.styleMedium16(context),
          ),
        ),
        const LatestTransactionList(),
        const Divider(
          height: 48,
          color: Color(0xffF1F1F1),
        ),
        const QuickInvoiceForm(),
      ]),
    );
  }
}
