import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:macos_ui/macos_ui.dart';
import '../../../app/screens/app_screen2/app_screen2.dart';

class MacScreen2 extends StatefulWidget {
  const MacScreen2({super.key});

  @override
  State createState() => MacScreen2State();
}

class MacScreen2State extends State<MacScreen2> {
  @override
  Widget build(BuildContext context) {
    return MacosScaffold(
      children: [
        ContentArea(
          builder: (context, scrollController) {
            return CustomScrollView(
              slivers: [
                SliverToolBar(
                  title: Text('menuScreen2'.tr),
                  leading: MacosTooltip(
                    message: 'sideBarToggle'.tr,
                    useMousePosition: false,
                    child: MacosIconButton(
                      icon: MacosIcon(
                        CupertinoIcons.sidebar_left,
                        color: MacosTheme.brightnessOf(context).resolve(
                          const Color.fromRGBO(0, 0, 0, 0.5),
                          const Color.fromRGBO(255, 255, 255, 0.5),
                        ),
                        size: 20.0,
                      ),
                      boxConstraints: const BoxConstraints(
                        minHeight: 20,
                        minWidth: 20,
                        maxWidth: 48,
                        maxHeight: 38,
                      ),
                      onPressed: () =>
                          MacosWindowScope.of(context).toggleSidebar(),
                    ),
                  ),
                  floating: true,
                  pinned: false,
                ),
                const SliverPadding(
                    padding: EdgeInsets.all(16),
                    sliver: SliverToBoxAdapter(
                      child: AppScreen2(),
                    )),
              ],
            );
          },
        ),
      ],
    );
  }
}
