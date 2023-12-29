import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      /// Android & Web
      if (kIsWeb || Platform.isAndroid) {
        return Text('appName'.tr,
            style: TextStyle(
              fontFamily: 'Electric Toaster',
              color: Theme.of(context).canvasColor,
              fontWeight: FontWeight.w400,
              fontSize: 13,
            ));
        /// iOS
      } else if (Platform.isIOS) {
        return Text('appName'.tr,
            style: const TextStyle(
              fontFamily: 'Electric Toaster',
              fontWeight: FontWeight.w400,
              fontSize: 13,
            ));
        /// MAC OS
      } else if (Platform.isMacOS) {
        return Text('appName'.tr,
            style: const TextStyle(
              fontFamily: 'Electric Toaster',
              fontWeight: FontWeight.w400,
              fontSize: 13,
            ));
        /// Linux
      } else if (Platform.isLinux) {
        return Text('appName'.tr,
            style: TextStyle(
              fontFamily: 'Electric Toaster',
              color: Theme.of(context).canvasColor,
              fontWeight: FontWeight.w400,
              fontSize: 13,
            ));
        /// Windows
      } else if (Platform.isWindows) {
        return Text('appName'.tr,
            style: TextStyle(
              fontFamily: 'Electric Toaster',
              color: Theme.of(context).canvasColor,
              fontWeight: FontWeight.w400,
              fontSize: 13,
            ));
        /// Fuchsia or Else
      } else {
        return Text('appName'.tr,
            style: const TextStyle(
              fontFamily: 'Electric Toaster',
              fontWeight: FontWeight.w400,
              fontSize: 13,
            ));
      }
    });
  }
}
