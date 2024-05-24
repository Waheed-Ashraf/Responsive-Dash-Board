import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/dots_indicator_list.dart';
import 'package:responsive_dash_board/widgets/my_card_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My card",
          style: AppStyles.styleSemiBold20(context),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 19),
          child: MyCardsPageView(
            pageController: pageController,
          ),
        ),
        DotsIndicator(
          currentPageIndex: currentPageIndex,
        ),
      ],
    );
  }
}
