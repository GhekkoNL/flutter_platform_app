import 'package:flutter/material.dart';
import '../components/destinations.dart';

class NavBar extends StatefulWidget {
  const NavBar({
    super.key,
    this.onSelectItem,
    required this.selectedIndex,
    required this.isBar,
    this.isBadge = false,
  });

  final void Function(int)? onSelectItem;
  final int selectedIndex;
  final bool isBar;
  final bool isBadge;

  @override
  State createState() => NavBarState();
}

class NavBarState extends State<NavBar> {
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.selectedIndex;
  }

  @override
  void didUpdateWidget(covariant NavBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.selectedIndex != oldWidget.selectedIndex) {
      selectedIndex = widget.selectedIndex;
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget navigationBar = Focus(
      autofocus: !(widget.isBar || widget.isBadge),
      child: NavigationBar(
        height: 65,
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
          if (!widget.isBar) widget.onSelectItem!(index);
        },
        destinations: appDestinations,
      ),
    );
    return navigationBar;
  }
}