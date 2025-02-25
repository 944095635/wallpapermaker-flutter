import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wallpaper_maker/values/sizes.dart';

/// 模糊组件
class BlurWidget extends StatelessWidget {
  const BlurWidget({
    super.key,
    this.child,
    this.sigmaX = 15,
    this.sigmaY = 15,
    this.radius = Sizes.borderRadius,
  });

  final double sigmaX;

  final double sigmaY;

  final Widget? child;

  final BorderRadius radius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: radius,
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: sigmaX,
          sigmaY: sigmaY,
        ),
        child: child,
      ),
    );
  }
}

/// 模糊组件
class BlurWidgetEx extends StatelessWidget {
  const BlurWidgetEx({
    super.key,
    this.child,
    this.sigmaX = 15,
    this.sigmaY = 15,
    this.blurRadius = 0,
    this.hasTopBorder = false,
    this.hasBottomBorder = false,
    required this.backgroundColor,
    this.radius = Sizes.borderRadius,
  });

  final double sigmaX;

  final double sigmaY;

  final Widget? child;

  final double blurRadius;

  final BorderRadius radius;

  final Color backgroundColor;

  final bool hasTopBorder;

  final bool hasBottomBorder;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: radius,
        boxShadow: blurRadius != 0
            ? [
                BoxShadow(
                  color: const Color.fromRGBO(60, 60, 60, 0.15),
                  blurRadius: blurRadius,
                  blurStyle: BlurStyle.outer,
                ),
              ]
            : null,
      ),
      child: ClipRRect(
        borderRadius: radius,
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: sigmaX,
            sigmaY: sigmaY,
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: radius,
              border: Border(
                top: hasTopBorder
                    ? const BorderSide(
                        color: Color.fromRGBO(255, 255, 255, 0.5),
                      )
                    : BorderSide.none,
                bottom: hasBottomBorder
                    ? const BorderSide(
                        color: Color.fromRGBO(255, 255, 255, 0.5),
                      )
                    : BorderSide.none,
              ),
              color: backgroundColor,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
