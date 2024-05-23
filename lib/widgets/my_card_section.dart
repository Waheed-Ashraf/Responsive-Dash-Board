import 'package:flutter/material.dart';

import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/custom_container.dart';
import 'package:responsive_dash_board/widgets/my_card_page_view.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 24, right: 24),
      child: CustomContainer(
        padding: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My card",
              style: AppStyles.styleSemiBold20(context),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, bottom: 19),
              child: MyCardsPageView(),
            )
          ],
        ),
      ),
    );
  }
}
