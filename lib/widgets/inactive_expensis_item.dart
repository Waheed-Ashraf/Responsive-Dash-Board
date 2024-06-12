import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/all_expensis_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class InActiveExpensisItem extends StatelessWidget {
  final AllExpensisItmeModel allExpensisItmeModel;

  const InActiveExpensisItem({super.key, required this.allExpensisItmeModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            width: 1,
            color: Color(0xfff1f1f1),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Flexible(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 60),
                    child: Container(
                      decoration: const ShapeDecoration(
                          color: Color(0xfffafafa), shape: OvalBorder()),
                      child: Center(
                        child: SvgPicture.asset(allExpensisItmeModel.headerImg),
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.keyboard_arrow_right,
                color: Color(0xFF064061),
              ),
            ],
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensisItmeModel.itmeTitle,
              style: AppStyles.styleSemiBold16(context),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensisItmeModel.date,
              style: AppStyles.styleRegular14(context),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensisItmeModel.ammount,
              style: AppStyles.styleSemiBold24(context),
            ),
          ),
        ],
      ),
    );
  }
}
