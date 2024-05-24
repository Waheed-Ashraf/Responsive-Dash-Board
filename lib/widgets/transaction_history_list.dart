import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_history_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransActionHistoryList extends StatelessWidget {
  const TransActionHistoryList({super.key});
  static List<TransactionHistoryModel> transactionHistoryModel = [
    TransactionHistoryModel(
        title: "Cash Withdrawal",
        subtitle: "13 Apr, 2022 ",
        monyAmmount: r"$20,129"),
    TransactionHistoryModel(
        title: "Landing Page project",
        subtitle: "13 Apr, 2022 at 3:30 PM ",
        monyAmmount: r"$10,012"),
    TransactionHistoryModel(
        title: "Juni Mobile App project",
        subtitle: "13 Apr, 2022 at 3:30 PM ",
        monyAmmount: r"$2,000"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactionHistoryModel.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Card(
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: ListTile(
              title: Text(
                item.title,
                style: AppStyles.styleSemiBold16(context),
              ),
              subtitle: Text(
                item.subtitle,
                style: AppStyles.styleRegular16(context)
                    .copyWith(color: const Color(0xffAAAAAA)),
              ),
              trailing: Text(
                item.monyAmmount,
                style: AppStyles.styleSemiBold20(context).copyWith(
                    color: index == 0
                        ? const Color(0xffF3735E)
                        : const Color(0xff7DD97B)),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
