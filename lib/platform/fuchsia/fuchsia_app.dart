import 'package:flutter/material.dart';

class Fuchsia extends StatefulWidget {
  const Fuchsia({super.key});

  @override
  State createState() => FuchsiaState();
}

class FuchsiaState extends State<Fuchsia> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
          child: Text('Fuchsia Main Page'),
        ));
  }
}
