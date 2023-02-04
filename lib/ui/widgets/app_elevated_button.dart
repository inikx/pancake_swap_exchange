import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    super.key,
    this.backgroundColor,
    this.child,
    this.width,
    required this.onPressed,
    this.height,
    this.shape,
  });
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Widget? child;
  final OutlinedBorder? shape;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 80,
      width: width ?? MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: shape,
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
