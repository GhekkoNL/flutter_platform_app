import 'package:app/locale/language_switch.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ActionToggles extends StatelessWidget {
  const ActionToggles({super.key,
    required this.handleBrightnessChange,
    this.showTooltipBelow = false,
  });
  final Function handleBrightnessChange;
  final bool showTooltipBelow;

  @override
  Widget build(BuildContext context) {
    final isBright = Theme.of(context).brightness == Brightness.light;
    return Row( children: [
      const LanguageSwitch(),
        Tooltip(
          preferBelow: showTooltipBelow,
          message: 'darkModeSwitch'.tr,
          child: IconButton(
            icon: isBright
                ? const Icon(Icons.dark_mode_outlined)
                : const Icon(Icons.light_mode_outlined),
            onPressed: () => handleBrightnessChange(!isBright),
          ),
        ),
      const Gap(8),
    ]);
  }
}


class ExpandedTrailingActions extends StatelessWidget {
  const ExpandedTrailingActions({super.key,
    required this.useLightMode,
    required this.handleBrightnessChange,
  });
  final void Function(bool) handleBrightnessChange;
  final bool useLightMode;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final trailingActionsBody = Container(
      constraints: const BoxConstraints.tightFor(width: 250),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Text('language'.tr),
              Expanded(child: Container()),
              const LanguageSwitch(),
            ],
          ),
          const Gap(5),
          Row(
            children: [
              Text('darkMode'.tr),
              Expanded(child: Container()),
              Switch(
                  value: useLightMode,
                  onChanged: (value) {
                    handleBrightnessChange(value);
                  })
            ],
          ),
        ],
      ),
    );
    return screenHeight > 740
        ? trailingActionsBody
        : SingleChildScrollView(child: trailingActionsBody);
  }
}


