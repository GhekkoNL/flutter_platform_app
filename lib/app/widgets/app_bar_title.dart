import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      /// Android & Web
      if (kIsWeb || Platform.isAndroid) {
        return Text('Ghekko App',
            style: TextStyle(
              fontFamily: 'Electric Toaster',
              color: Theme.of(context).canvasColor,
              fontWeight: FontWeight.w400,
              fontSize: 13,
            ));
        /// iOS
      } else if (Platform.isIOS) {
        return const Text('Ghekko App',
            style: TextStyle(
              fontFamily: 'Electric Toaster',
              fontWeight: FontWeight.w400,
              fontSize: 13,
            ));
        /// MAC OS
      } else if (Platform.isMacOS) {
        return const Text('Ghekko App',
            style: TextStyle(
              fontFamily: 'Electric Toaster',
              fontWeight: FontWeight.w400,
              fontSize: 13,
            ));
        /// Linux
      } else if (Platform.isLinux) {
        return const Text('Ghekko App',
            style: TextStyle(
              fontFamily: 'Electric Toaster',
              fontWeight: FontWeight.w400,
              fontSize: 13,
            ));
        /// Windows
      } else if (Platform.isWindows) {
        return const Text('Ghekko App',
            style: TextStyle(
              fontFamily: 'Electric Toaster',
              fontWeight: FontWeight.w400,
              fontSize: 13,
            ));
        /// Fuchsia or Else
      } else {
        return const Text('Ghekko App',
            style: TextStyle(
              fontFamily: 'Electric Toaster',
              fontWeight: FontWeight.w400,
              fontSize: 13,
            ));
      }
    });
  }
}
