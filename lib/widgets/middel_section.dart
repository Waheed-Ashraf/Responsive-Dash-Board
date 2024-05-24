import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';
import 'package:responsive_dash_board/widgets/quick_invoice.dart';

class MiddelSection extends StatelessWidget {
  const MiddelSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Column(children: [
          AllExpenses(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: QuickInvoice(),
          ),
        ]),
      ),
    ]);
  }
}
