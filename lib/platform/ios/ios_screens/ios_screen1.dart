import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import '../../../app/screens/app_screen1/app_screen1.dart';
import '../../../app/widgets/app_bar_title.dart';

class IOSScreen1 extends StatelessWidget {
  const IOSScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            leading: Column(children: [Gap(10), AppBarTitle()])),
          child: AppScreen1());
  }
}
