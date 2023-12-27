import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import '../theme/widget_styling/design_elements.dart';

class Dummy extends StatefulWidget {
  const Dummy({super.key});

  @override
  State createState() => DummyState();
}

class DummyState extends State<Dummy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          ItemContainerCard(
            children: [
              const Gap(25),
              Text('Dummy Screen',
                  style: TextStyle(
                    fontFamily: 'Bungee',
                    color: Theme.of(context).canvasColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  )),
              Text('demo content',
                  style: TextStyle(
                    color: Theme.of(context).canvasColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  )),
              const Gap(20),
            ],
          )
        ]));
  }
}
