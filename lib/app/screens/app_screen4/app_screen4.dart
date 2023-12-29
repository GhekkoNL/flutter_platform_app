import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../data/responsive.dart';
import '../../../theme/widget_styling/design_elements.dart';

class AppScreen4 extends StatefulWidget {
  const AppScreen4({super.key});

  @override
  State createState() => AppScreen4State();
}

class AppScreen4State extends State<AppScreen4> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (kIsWeb || Platform.isAndroid || Platform.isIOS || Platform.isWindows) {
        return SafeArea(
            child: Scaffold(
                body: SingleChildScrollView(
                    primary: false,
                    child: Column(children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// Start SmallScreen View Android, iOS & Web
                          Expanded(
                            flex: 6,
                            child: Column(
                              children: [
                                MainContainerCard(
                                    label: 'Card Title 1',
                                    children: <Widget>[
                                      Row(
                                        children: [
                                          Expanded(
                                              child: Container(
                                                  height: 100,
                                                  color: Colors.yellow,
                                                  child: const Center(
                                                      child:
                                                      Text('Screen 4')))),
                                          Expanded(
                                              child: Container(
                                                  height: 100,
                                                  color: Colors.purpleAccent)),
                                        ],
                                      ),
                                    ]),
                                MainContainerCard(
                                    label: 'Card Title 2',
                                    children: <Widget>[
                                      Container(
                                          height: 100,
                                          color: Colors.orangeAccent)
                                    ]),
                                if (Responsive.isMobile(context))
                                  Column(
                                    children: [
                                      const Gap(10),
                                      MainContainerCard(
                                          label: 'Card Title 3',
                                          children: <Widget>[
                                            Container(
                                                height: 100,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                color: Colors.green,
                                                child: const Center(
                                                    child:
                                                    Text('Mobile View'))),
                                          ]),
                                      Container(
                                          height: 100,
                                          color: Colors.red,
                                          child: const Center(
                                              child: Text('Mobile View'))),
                                      ItemContainerCard(children: <Widget>[
                                        Container(
                                            height: 100,
                                            color: Colors.blue,
                                            child: const Center(
                                                child: Text('Mobile View'))),
                                      ]),
                                    ],
                                  )
                              ],
                            ),
                          ),

                          /// Start WideScreen View Android, iOS & Web
                          if (!Responsive.isMobile(context))
                            Expanded(
                                flex: 6,
                                child: Column(
                                  children: [
                                    MainContainerCard(
                                        label: 'Card Title 3',
                                        children: <Widget>[
                                          Container(
                                              height: 100,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              color: Colors.green,
                                              child: const Center(
                                                  child:
                                                  Text('WideScreen View'))),
                                        ]),
                                    Container(
                                        height: 100,
                                        color: Colors.red,
                                        child: const Center(
                                            child: Text('WideScreen View'))),
                                    ItemContainerCard(children: <Widget>[
                                      Container(
                                          height: 100,
                                          color: Colors.blue,
                                          child: const Center(
                                              child: Text('WideScreen View'))),
                                    ]),
                                  ],
                                )),
                        ],
                      )
                    ]))));
      } else if (Platform.isMacOS) {
        return SafeArea(
            child: SingleChildScrollView(
                primary: false,
                child: Column(children: [
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    /// Start SmallScreen View Mac
                    Expanded(
                      flex: 6,
                      child: Column(
                        children: [
                          MainContainerCard(
                              label: 'Card Title 1',
                              children: <Widget>[
                                Row(
                                  children: [
                                    Expanded(
                                        child: Container(
                                            height: 100,
                                            color: Colors.yellow,
                                            child: const Center(
                                                child:
                                                Text('Mac Screen 4')))),
                                    Expanded(
                                        child: Container(
                                            height: 100,
                                            color: Colors.purpleAccent)),
                                  ],
                                ),
                              ]),
                          MainContainerCard(
                              label: 'Card Title 2',
                              children: <Widget>[
                                Container(
                                    height: 100,
                                    color: Colors.orangeAccent)
                              ]),
                          if (Responsive.isMobile(context))
                            Column(
                              children: [
                                const Gap(10),
                                MainContainerCard(
                                    label: 'Card Title 3',
                                    children: <Widget>[
                                      Container(
                                          height: 100,
                                          width: MediaQuery.of(context)
                                              .size
                                              .width,
                                          color: Colors.green,
                                          child: const Center(
                                              child:
                                              Text('Mobile View'))),
                                    ]),
                                Container(
                                    height: 100,
                                    color: Colors.red,
                                    child: const Center(
                                        child: Text('Mobile View'))),
                                ItemContainerCard(children: <Widget>[
                                  Container(
                                      height: 100,
                                      color: Colors.blue,
                                      child: const Center(
                                          child: Text('Mobile View'))),
                                ]),
                              ],
                            )
                        ],
                      ),
                    ),

                    /// Start WideScreen View Mac
                    if (!Responsive.isMobile(context))
                      Expanded(
                          flex: 6,
                          child: Column(
                            children: [
                              MainContainerCard(
                                  label: 'Card Title 3',
                                  children: <Widget>[
                                    Container(
                                        height: 100,
                                        width: MediaQuery.of(context)
                                            .size
                                            .width,
                                        color: Colors.green,
                                        child: const Center(
                                            child:
                                            Text('WideScreen View'))),
                                  ]),
                              Container(
                                  height: 100,
                                  color: Colors.red,
                                  child: const Center(
                                      child: Text('WideScreen View'))),
                              ItemContainerCard(children: <Widget>[
                                Container(
                                    height: 100,
                                    color: Colors.blue,
                                    child: const Center(
                                        child: Text('WideScreen View'))),
                              ]),
                            ],
                          )),
                  ])
                ])));

        /// Linux
      } else if (Platform.isLinux) {
        return const SizedBox();

        /// Fuchsia or Else
      } else {
        return const SizedBox();
      }
    });
  }
}
