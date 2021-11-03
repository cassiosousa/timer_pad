import 'package:flutter/material.dart';
import 'package:timer_pad_dependencies_module/dependencies_module.dart';
import 'package:timer_pad_design_system/pad_design_system.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Row(
        children: [
          Expanded(child: RouterOutlet()),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Modular.to.navigate("/task");
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(AdaptativeTheme.largeRounded),
            topRight: Radius.circular(AdaptativeTheme.largeRounded),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: AdaptativeTheme.defaultRounded,
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(AdaptativeTheme.largeRounded),
            topRight: Radius.circular(AdaptativeTheme.largeRounded),
          ),
          child: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: AdaptativeTheme.minSpace,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.alarm, size: 24)),
                SizedBox(height: 24, width: 24),
                SizedBox(height: 24, width: 24),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.pie_chart, size: 24)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
