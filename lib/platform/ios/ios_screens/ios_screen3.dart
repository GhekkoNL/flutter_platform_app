import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import '../../../app/screens/app_screen3/app_screen3.dart';
import '../../../app/widgets/app_bar_title.dart';

class IOSScreen3 extends StatelessWidget {
  const IOSScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
            leading: Column(children: [Gap(10), AppBarTitle()])),
        child: AppScreen3());
  }
}
