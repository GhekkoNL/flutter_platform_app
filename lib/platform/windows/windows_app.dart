import 'package:fluent_ui/fluent_ui.dart';

class WindowsApp extends StatelessWidget {
  const WindowsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      home: NavigationView(
        appBar: const NavigationAppBar(
          title: Text('Bodyland Men\'s BodyCare'),
        ),
        pane: NavigationPane(displayMode: PaneDisplayMode.auto, items: [
          PaneItem(
            icon: const Icon(FluentIcons.home),
            title: const Text("Home"),
            body: const SizedBox(),
          ),
          PaneItem(
            icon: const Icon(FluentIcons.insert),
            title: const Text("Insert"),
            body: const SizedBox(),
          ),
          PaneItem(
            icon: const Icon(FluentIcons.view),
            title: const Text("View"),
            body: const SizedBox(),
          )
        ]),
      ),
    );
  }
}
