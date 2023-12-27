import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:url_launcher/link.dart';

class MacSidebarButton extends StatefulWidget {
  const MacSidebarButton({super.key});

  @override
  State createState() => MacSidebarButtonState();
}

class MacSidebarButtonState extends State<MacSidebarButton> {
  @override
  Widget build(BuildContext context) {
    final typography = MacosTypography.of(context);
    return Column(
      children: [
        Link(
            uri: Uri.parse('https://ghekko.nl/'),
            target: LinkTarget.blank,
            builder: (BuildContext ctx, FollowLink? openLink) {
              return PushButton(
                  controlSize: ControlSize.large,
                  secondary: true,
                  onPressed: openLink,
                  child: Text('Ext. Link', style: typography.headline));
            }),
      ],
    );
  }
}
