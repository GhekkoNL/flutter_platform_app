import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:macos_ui/macos_ui.dart';
import '../../../../theme/widget_styling/design_elements.dart';

class ContainerOneRight extends StatelessWidget {
  const ContainerOneRight({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Insets.small),
      child: LayoutBuilder(builder: (context, constraints) {
        /// Android - Web - Linux - Windows
        if (kIsWeb || Platform.isAndroid || Platform.isLinux || Platform.isWindows) {
          return Center(
              child: Text('adjustAllPlatforms'.tr,
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center));

          /// IOS
        } else if (Platform.isIOS) {
          return Center(
              child: Text('adjustAllPlatforms'.tr,
                  style: CupertinoTheme.of(context).textTheme.textStyle,
                  textAlign: TextAlign.center));

          /// MAC OS
        } else if (Platform.isMacOS) {
          return Center(
              child: Text('adjustAllPlatforms'.tr,
                  style: MacosTheme.of(context).typography.body,
                  textAlign: TextAlign.center));

          /// Fuchsia or else
        } else {
          return const SizedBox();
        }
      }),
    );
  }
}
