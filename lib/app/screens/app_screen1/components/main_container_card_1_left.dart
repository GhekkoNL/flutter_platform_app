import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../../theme/widget_styling/design_elements.dart';

class ContainerOneLeft extends StatelessWidget {
  const ContainerOneLeft({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Insets.small),
      child: LayoutBuilder(builder: (context, constraints) {
        /// Android - Web - Linux - Windows
        if (kIsWeb || Platform.isAndroid || Platform.isLinux || Platform.isWindows) {
          return const Center(
              child: Text('Main Web Screen 1'));

          /// IOS
        } else if (Platform.isIOS) {
          return const Center(
              child: Text(
                  'iOS Screen 1'));

          /// MAC OS
        } else if (Platform.isMacOS) {
          return const Center(
              child: Text(
                  'MacOS Screen 1'));

          /// Fuchsia or else
        } else {
          return const SizedBox();
        }
      }),
    );
  }
}
