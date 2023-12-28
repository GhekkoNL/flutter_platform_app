import 'dart:io';
import 'package:app/app/screens/app_screen1/components/main_container_card_2_right.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:macos_ui/macos_ui.dart';
import '../../../data/responsive.dart';
import '../../../theme/widget_styling/design_elements.dart';
import 'components/floating_action.dart';
import 'components/main_container_card_1_left.dart';

class AppScreen1 extends StatelessWidget {
  const AppScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      /// isAndroid & kIsWeb
      if (kIsWeb || Platform.isAndroid) {
        return const AndroidContent();

        /// isIOS
      } else if (Platform.isIOS) {
        return const IOSContent();

        /// isMacOS
      } else if (Platform.isMacOS) {
        return const MacContent();

        /// isLinux
      } else if (Platform.isLinux) {
        return const AndroidContent();

        /// isWindows
      } else if (Platform.isWindows) {
        return const AndroidContent();

        /// Fuchsia or Else
      } else {
        return const SizedBox();
      }
    });
  }
}

class AndroidContent extends StatelessWidget {
  const AndroidContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            floatingActionButton: const FloatingAction(),
            body: SingleChildScrollView(
                primary: false,
                child: Column(children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Start SmallScreen View Android & Web
                      Expanded(
                        flex: 6,
                        child: Column(
                          children: [
                            const MainContainerCard(
                                label: 'MainContainerCard 1',
                                children: <Widget>[
                                  Row(
                                    children: [
                                      Expanded(
                                          child: ContainerOneLeft()),
                                      Expanded(
                                          child: ContainerOneRight()),
                                    ],
                                  ),
                                ]),
                            MainContainerCard(
                                label: 'MainContainerCard 2',
                                children: <Widget>[
                                  Container(
                                      height: 100, color: Colors.orangeAccent)
                                ]),
                            if (Responsive.isMobile(context))
                              Column(
                                children: [
                                  const Gap(10),
                                  MainContainerCard(
                                      label: 'MainContainerCard 3',
                                      children: <Widget>[
                                        Container(
                                            height: 100,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            color: Colors.green,
                                            child: const Center(
                                                child: Text('Mobile View'))),
                                      ]),
                                  ItemContainerCard(children: <Widget>[
                                    Container(
                                        height: 100,
                                        color: Colors.blue,
                                        child: const Center(
                                            child: Text('ItemContainerCard 1\nMobile View'))),
                                  ]),
                                  ItemContainerCard(children: <Widget>[
                                    Container(
                                        height: 100,
                                        color: Colors.purple,
                                        child: const Center(
                                            child: Text('ItemContainerCard 2\nMobile View'))),
                                  ]),
                                  ItemContainerCard(children: <Widget>[
                                    Container(
                                        height: 100,
                                        color: Colors.greenAccent,
                                        child: const Center(
                                            child: Text('ItemContainerCard 3\nMobile View'))),
                                  ]),
                                ],
                              )
                          ],
                        ),
                      ),

                      /// Start WideScreen View Android & Web
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
                                          width:
                                          MediaQuery.of(context).size.width,
                                          color: Colors.green,
                                          child: const Center(
                                              child: Text('Large View'))),
                                    ]),
                                ItemContainerCard(children: <Widget>[
                                  Container(
                                      height: 100,
                                      color: Colors.blue,
                                      child: const Center(
                                          child: Text('ItemContainerCard 1\nLarge View'))),
                                ]),
                                ItemContainerCard(children: <Widget>[
                                  Container(
                                      height: 100,
                                      color: Colors.purple,
                                      child: const Center(
                                          child: Text('ItemContainerCard 2\nLarge View'))),
                                ]),
                                ItemContainerCard(children: <Widget>[
                                  Container(
                                      height: 100,
                                      color: Colors.greenAccent,
                                      child: const Center(
                                          child: Text('ItemContainerCard 3\nLarge View'))),
                                ]),
                              ],
                            )),
                    ],
                  )
                ]))));
  }
}

class IOSContent extends StatelessWidget {
  const IOSContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CupertinoPageScaffold(
          backgroundColor: const CupertinoDynamicColor.withBrightness(
            color: CupertinoColors.white, darkColor: CupertinoColors.black),
            child: Scaffold(
              backgroundColor: Colors.transparent,
                floatingActionButton: const FloatingAction(),
                body: SingleChildScrollView(
                primary: false,
                child: Column(children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Start SmallScreen View iOS
                      Expanded(
                        flex: 6,
                        child: Column(
                          children: [
                            const MainContainerCard(
                                label: 'MainContainerCard 1',
                                children: <Widget>[
                                  Row(
                                    children: [
                                      Expanded(
                                          child: ContainerOneLeft()),
                                      Expanded(
                                          child: ContainerOneRight()),
                                    ],
                                  ),
                                ]),
                            MainContainerCard(
                                label: 'MainContainerCard 2',
                                children: <Widget>[
                                  Container(
                                      height: 100, color: Colors.orangeAccent)
                                ]),
                            if (Responsive.isMobile(context))
                              Column(
                                children: [
                                  const Gap(10),
                                  MainContainerCard(
                                      label: 'MainContainerCard 3',
                                      children: <Widget>[
                                        Container(
                                            height: 100,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            color: Colors.green,
                                            child: const Center(
                                                child: Text('Mobile View'))),
                                      ]),
                                  ItemContainerCard(children: <Widget>[
                                    Container(
                                        height: 100,
                                        color: Colors.blue,
                                        child: const Center(
                                            child: Text('ItemContainerCard 1\nMobile View'))),
                                  ]),
                                  ItemContainerCard(children: <Widget>[
                                    Container(
                                        height: 100,
                                        color: Colors.purple,
                                        child: const Center(
                                            child: Text('ItemContainerCard 2\nMobile View'))),
                                  ]),
                                  ItemContainerCard(children: <Widget>[
                                    Container(
                                        height: 100,
                                        color: Colors.greenAccent,
                                        child: const Center(
                                            child: Text('ItemContainerCard 3\nMobile View'))),
                                  ]),
                                ],
                              )
                          ],
                        ),
                      ),

                      /// Start WideScreen View iOS
                      if (!Responsive.isMobile(context))
                        Expanded(
                            flex: 6,
                            child: Column(
                              children: [
                                MainContainerCard(
                                    label: 'MainContainerCard 3',
                                    children: <Widget>[
                                      Container(
                                          height: 100,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          color: Colors.green,
                                          child: const Center(
                                              child: Text('Large View'))),
                                    ]),
                                ItemContainerCard(children: <Widget>[
                                  Container(
                                      height: 100,
                                      color: Colors.blue,
                                      child: const Center(
                                          child: Text('ItemContainerCard 1\nLarge View'))),
                                ]),
                                ItemContainerCard(children: <Widget>[
                                  Container(
                                      height: 100,
                                      color: Colors.purple,
                                      child: const Center(
                                          child: Text('ItemContainerCard 2\nLarge View'))),
                                ]),
                                ItemContainerCard(children: <Widget>[
                                  Container(
                                      height: 100,
                                      color: Colors.greenAccent,
                                      child: const Center(
                                          child: Text('ItemContainerCard 3\nLarge View'))),
                                ]),
                              ],
                            )),
                    ],
                  )
                ])))));
  }
}

class MacContent extends StatelessWidget {
  const MacContent({super.key});

  @override
  Widget build(BuildContext context) {
    final typography = MacosTypography.of(context);
    return SafeArea(
        child: SingleChildScrollView(
            primary: false,
            child: Column(children: [
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                /// Start SmallScreen View MacOS
                Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      const MainContainerCard(
                          label: 'MainContainerCard 1',
                          children: <Widget>[
                            Row(
                              children: [
                                Expanded(
                                    child: ContainerOneLeft()),
                                Expanded(
                                    child: ContainerOneRight()),
                              ],
                            ),
                          ]),
                      MainContainerCard(
                          label: 'MainContainerCard 2',
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               Text('LargeTitle', style: typography.largeTitle),
                                const SizedBox(height: 8.0),
                                Text(
                                  'LargeTitle',
                                  style: typography.largeTitle
                                      .copyWith(fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(height: 24.0),
                                Text('Title1', style: typography.title1),
                                const SizedBox(height: 8.0),
                                Text(
                                  'Title1',
                                  style: typography.title1
                                      .copyWith(fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(height: 24.0),
                                Text('Title2', style: typography.title2),
                                const SizedBox(height: 8.0),
                                Text(
                                  'Title2',
                                  style: typography.title2
                                      .copyWith(fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(height: 24.0),
                                Text('Title3', style: typography.title3),
                                const SizedBox(height: 8.0),
                                Text(
                                  'Title3',
                                  style: typography.title3
                                      .copyWith(fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 24.0),
                                Text('Headline', style: typography.headline),
                                const SizedBox(height: 8.0),
                                Text(
                                  'Headline',
                                  style: typography.headline
                                      .copyWith(fontWeight: MacosFontWeight.w860),
                                ),
                                const SizedBox(height: 24.0),
                                Text('Body', style: typography.body),
                                const SizedBox(height: 8.0),
                                Text(
                                  'Body',
                                  style: typography.body
                                      .copyWith(fontWeight: MacosFontWeight.w590),
                                ),
                                const SizedBox(height: 24.0),
                                Text('Callout', style: typography.callout),
                                const SizedBox(height: 8.0),
                                Text(
                                  'Callout',
                                  style: typography.callout
                                      .copyWith(fontWeight: MacosFontWeight.w590),
                                ),
                                const SizedBox(height: 24.0),
                                Text('Subheadline', style: typography.subheadline),
                                const SizedBox(height: 8.0),
                                Text(
                                  'Subheadline',
                                  style: typography.subheadline
                                      .copyWith(fontWeight: MacosFontWeight.w590),
                                ),
                                const SizedBox(height: 24.0),
                                Text('Footnote', style: typography.subheadline),
                                const SizedBox(height: 8.0),
                                Text(
                                  'Footnote',
                                  style: typography.subheadline
                                      .copyWith(fontWeight: MacosFontWeight.w590),
                                ),
                                const SizedBox(height: 24.0),
                                Text('Caption1', style: typography.caption1),
                                const SizedBox(height: 8.0),
                                Text(
                                  'Caption1',
                                  style: typography.caption1
                                      .copyWith(fontWeight: MacosFontWeight.w510),
                                ),
                                const SizedBox(height: 24.0),
                                Text('Caption2', style: typography.caption2),
                                const SizedBox(height: 8.0),
                                Text(
                                  'Caption2',
                                  style: typography.caption2
                                      .copyWith(fontWeight: MacosFontWeight.w590),
                                ),
                              ],
                            ),
                          ]),
                      if (Responsive.isMobile(context))
                        Column(
                          children: [
                            const Gap(10),
                            MainContainerCard(
                                label: 'MainContainerCard 3',
                                children: <Widget>[
                                  Container(
                                      height: 100,
                                      width: MediaQuery.of(context).size.width,
                                      color: Colors.green,
                                      child: const Center(
                                          child: Text('Mobile View'))),
                                ]),
                            ItemContainerCard(children: <Widget>[
                              Container(
                                  height: 100,
                                  color: Colors.blue,
                                  child: const Center(
                                      child: Text('ItemContainerCard 1\nMobile View'))),
                            ]),
                            ItemContainerCard(children: <Widget>[
                              Container(
                                  height: 100,
                                  color: Colors.purple,
                                  child: const Center(
                                      child: Text('ItemContainerCard 2\nMobile View'))),
                            ]),
                            ItemContainerCard(children: <Widget>[
                              Container(
                                  height: 100,
                                  color: Colors.greenAccent,
                                  child: const Center(
                                      child: Text('ItemContainerCard 3\nMobile View'))),
                            ]),
                          ],
                        )
                    ],
                  ),
                ),

                /// Start WideScreen View MacOS
                if (!Responsive.isMobile(context))
                  Expanded(
                      flex: 6,
                      child: Column(
                        children: [
                          MainContainerCard(
                              label: 'MainContainerCard 3',
                              children: <Widget>[
                                Container(
                                    height: 100,
                                    width: MediaQuery.of(context).size.width,
                                    color: Colors.green,
                                    child: const Center(
                                        child: Text('Large View'))),
                              ]),
                          ItemContainerCard(children: <Widget>[
                            Container(
                                height: 100,
                                color: Colors.blue,
                                child: const Center(
                                    child: Text('ItemContainerCard 1\nLarge View'))),
                          ]),
                          ItemContainerCard(children: <Widget>[
                            Container(
                                height: 100,
                                color: Colors.purple,
                                child: const Center(
                                    child: Text('ItemContainerCard 2\nLarge View'))),
                          ]),
                          ItemContainerCard(children: <Widget>[
                            Container(
                                height: 100,
                                color: Colors.greenAccent,
                                child: const Center(
                                    child: Text('ItemContainerCard 3\nLarge View'))),
                          ]),
                        ],
                      )),
              ])
            ])));
  }
}
