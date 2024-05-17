import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "All Expenses",
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: const BorderSide(width: 1, color: Color(0xffFF1F1F1)))),
          child: Row(
            children: [
              Text(
                "Monthly",
                style: AppStyles.styleMedium16(context),
              ),
              const SizedBox(
                width: 18,
              ),
              const Icon(
                Icons.keyboard_arrow_down,
                color: Color(0xFF064061),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
