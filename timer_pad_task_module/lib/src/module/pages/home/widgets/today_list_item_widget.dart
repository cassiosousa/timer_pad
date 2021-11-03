import 'package:flutter/material.dart';
import 'package:timer_pad_design_system/pad_design_system.dart';

class TodayListItemWidget extends StatelessWidget {
  const TodayListItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundedContainerWidget(
      color: Theme.of(context).cardTheme.color!,
      radius: AdaptativeTheme.defaultRounded,
      child: ListTile(
        shape: const RoundedRectangleBorder(
          borderRadius:
              BorderRadius.all(Radius.circular(AdaptativeTheme.defaultRounded)),
        ),
        leading: const CircleIconWidget(
          backgroundColor: Colors.red,
        ),
        title: Text("UI Design"),
        subtitle: Container(
          height: 24,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: AdaptativeTheme.minSpace),
                child: TitleTagWidget(
                  text: "Work",
                  backgroundColor: Colors.red[100]!,
                  textColor: Colors.redAccent,
                ),
              ),
              TitleTagWidget(
                text: "Reading",
                backgroundColor: Colors.green[50]!,
                textColor: Colors.green,
              ),
            ],
          ),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("00:42:00"),
            Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}
