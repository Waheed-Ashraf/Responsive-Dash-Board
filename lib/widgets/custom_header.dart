import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader(
      {super.key,
      required this.title,
      this.buttonTitle,
      required this.buttonIcon});
  final String title;
  final String? buttonTitle;
  final IconData buttonIcon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: const BorderSide(width: 1, color: Color(0xffff1f1f1)))),
          child: Row(
            children: [
              Text(
                buttonTitle ?? "",
                style: AppStyles.styleMedium16(context),
              ),
              if (buttonTitle != null)
                const SizedBox(
                  width: 18,
                ),
              Icon(
                buttonIcon,
                color: const Color(0xFF064061),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
