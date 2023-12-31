import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:macos_ui/macos_ui.dart';

class LanguageSwitch extends StatelessWidget {
  const LanguageSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      color: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
      icon: LayoutBuilder(builder: (context, constraints) {
        /// Android - Web - Linux - Windows
        if (kIsWeb || Platform.isAndroid || Platform.isLinux || Platform.isWindows) {
          return Icon(Icons.g_translate,
            color: Theme.of(context).canvasColor,);
          // MacOS
        } else if (Platform.isMacOS) {
          return Icon(Icons.g_translate,
              color: MacosTheme.of(context).primaryColor);
          // Fuchsia and or Others
        } else {
          return const SizedBox();
        }
      }),
      itemBuilder: (BuildContext bc) {
        return [
          PopupMenuItem(
            child: const DutchSwitch(),
            onTap: () {
            },
          ),
          PopupMenuItem(
            onTap: () {
            },
            child: const EnglishSwitch(),
          )
        ];
      },
    );
  }
}

var localeNL = const Locale('nl', 'NL');

class DutchSwitch extends StatelessWidget {
  const DutchSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: Row(
        children: [
          Image.asset('assets/icons/nl.png', width: 20),
          const Gap(10),
          Text('dutch'.tr, style: TextStyle(fontSize: 12,
              color: Theme.of(context).primaryColor)),
        ],
      ),
      onPressed: () {
        Get.updateLocale(localeNL);
      },
    );
  }
}

var localeEN = const Locale('en', 'GB');

class EnglishSwitch extends StatelessWidget {
  const EnglishSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: Row(
        children: [
          Image.asset('assets/icons/gb.png', width: 20),
          const Gap(10),
          Text('english'.tr, style: TextStyle(fontSize: 12,
              color: Theme.of(context).primaryColor)),
        ],
      ),
      onPressed: () {
        Get.updateLocale(localeEN);
      },
    );
  }
}
