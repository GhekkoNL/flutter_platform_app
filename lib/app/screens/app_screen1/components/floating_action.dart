import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class FloatingAction extends StatefulWidget {
  const FloatingAction({super.key});

  @override
  State createState() => FloatingActionState();
}

class FloatingActionState extends State<FloatingAction> {
  @override
  void initState() {
    super.initState();
    canLaunchUrl(Uri(scheme: 'https')).then((bool result) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Link(
        uri: Uri.parse('https://ghekko.nl'),
        target: LinkTarget.blank,
        builder: (BuildContext ctx, FollowLink? openLink) {
          return FloatingActionButton.extended(
              backgroundColor: Colors.yellow,
              onPressed: openLink,
              label: const Text('Ext. Link',
                  style: TextStyle(fontSize: 13, color: Colors.black)));
        });
  }
}
