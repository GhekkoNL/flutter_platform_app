import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'design_elements.dart';

class MenuButtonIntLink extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final VoidCallback? onPressed;
  final Widget child;

  const MenuButtonIntLink({
    super.key,
    required this.onPressed,
    required this.child,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(4);
    return InkWell(
      onTap: onPressed,
      child: Container(
          padding: const EdgeInsets.all(Insets.xsmall),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            border: Border.all(
              width: 0.5,
              color: Colors.grey.withOpacity(0.5),
            ),
            borderRadius: borderRadius,
          ),
          child: child),
    );
  }
}

class MenuButtonExtLink extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final String uri;
  final Widget child;

  const MenuButtonExtLink({
    super.key,
    required this.child,
    this.borderRadius,
    required this.uri,
  });

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(4);
    return Link(
        uri: Uri.parse(uri),
        target: LinkTarget.blank,
        builder: (BuildContext ctx, FollowLink? openLink) {
          return InkWell(
            onTap: openLink,
            child: Container(
                padding: const EdgeInsets.all(Insets.xsmall),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.5,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  borderRadius: borderRadius,
                ),
                child: child),
          );
        });
  }
}

class PromoButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double height;
  final Gradient gradient;
  final VoidCallback? onPressed;
  final Widget child;

  const PromoButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.borderRadius,
    this.width,
    this.height = 44.0,
    this.gradient = const LinearGradient(
      colors: [Colors.cyan, Colors.indigo],
      begin: Alignment(-0.7, 12),
      end: Alignment(1, -2),
    ),
  });

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(0);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: borderRadius,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: child,
      ),
    );
  }
}

class BookingButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double height;
  final Gradient gradient;
  final VoidCallback? onPressed;
  final Widget child;

  const BookingButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.borderRadius,
    this.width,
    this.height = 44.0,
    this.gradient = const LinearGradient(
      colors: [Colors.green, Colors.greenAccent],
      begin: Alignment(1, 4),
      end: Alignment(1, -2),
    ),
  });

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(0);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: borderRadius,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: child,
      ),
    );
  }
}
