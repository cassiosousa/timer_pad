import 'package:flutter/material.dart';
import 'package:timer_pad_design_system/pad_design_system.dart';
import 'package:timer_pad_task_module/src/module/pages/home/widgets/today_list_item_widget.dart';

class TodayWidget extends StatelessWidget {
  static const todayText = "Today";
  static const seeAllText = "See All";
  const TodayWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: AdaptativeTheme.defaultSpace),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              TitleWidget(text: todayText),
              TitleDetailWidget(text: seeAllText),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (_, index) {
              return const Padding(
                padding: EdgeInsets.only(bottom: AdaptativeTheme.defaultSpace),
                child: TodayListItemWidget(),
              );
            },
          ),
        ),
      ],
    );
  }
}
