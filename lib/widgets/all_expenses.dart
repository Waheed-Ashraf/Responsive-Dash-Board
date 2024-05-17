import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensis_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';

import 'package:responsive_dash_board/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/widgets/all_expensis_item.dart';
import 'package:responsive_dash_board/widgets/all_expensis_list.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: const Column(
          children: [
            AllExpensesHeader(),
            SizedBox(
              height: 20,
            ),
            AllExpensisList(),
          ],
        ),
      ),
    );
  }
}
