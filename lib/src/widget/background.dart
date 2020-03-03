import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NeumorphicBackground extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final Color backendColor;
  final BorderRadiusGeometry borderRadius;

  const NeumorphicBackground({
    this.child,
    this.padding,
    this.margin,
    this.borderRadius,
    this.backendColor = const Color(0xFF000000),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: this.margin,
      color: this.backendColor,
      child: ClipRRect(
        borderRadius: this.borderRadius ?? BorderRadius.circular(0),
        child: AnimatedContainer(
          color: NeumorphicTheme.getCurrentTheme(context).baseColor,
          padding: this.padding,
          duration: const Duration(milliseconds: 100),
          child: this.child,
        ),
      ),
    );
  }
}