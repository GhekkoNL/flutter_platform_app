import 'package:app/app/screens/app_screen3/app_screen3.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:macos_ui/macos_ui.dart';

class MacScreen3 extends StatefulWidget {
  const MacScreen3({super.key});

  @override
  State createState() => MacScreen3State();
}

class MacScreen3State extends State<MacScreen3> {
  @override
  Widget build(BuildContext context) {
    return MacosScaffold(
      children: [
        ContentArea(
          builder: (context, scrollController) {
            return CustomScrollView(
              slivers: [
                SliverToolBar(
                  title: Text('menuScreen3'.tr),
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
                      child: AppScreen3(),
                    )),
              ],
            );
          },
        ),
      ],
    );
  }
}
