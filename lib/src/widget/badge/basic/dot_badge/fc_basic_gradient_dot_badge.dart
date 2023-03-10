import 'package:flutter_component/src/extension/fc_extension.dart';
import 'package:flutter_component/flutter_component.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart' show Colors;

class FCBasicGradientDotBadge extends StatelessWidget {
  const FCBasicGradientDotBadge({
    super.key,
    required this.gradient,
    this.position = FCBadgePosition.topEnd,
    this.isShow = true,
    this.height,
    this.duration,
    required this.child,
  });

  final Gradient gradient;
  final FCBadgePosition position;
  final bool isShow;
  final double? height;
  final Duration? duration;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final FCConfig config = context.config;
    final IFCSize size = config.size;

    final Duration duration = this.duration ?? size.durationBadge;
    final double height = this.height ?? size.s10;

    return badges.Badge(
      position: this.position.packageMapForDot,
      badgeAnimation: badges.BadgeAnimation.fade(
        animationDuration: duration,
        disappearanceFadeAnimationDuration: duration,
        curve: Curves.easeInOut,
        colorChangeAnimationCurve: Curves.easeInOut,
      ),
      showBadge: this.isShow,
      badgeStyle: badges.BadgeStyle(
        elevation: 0,
        padding: EdgeInsets.zero,
        badgeColor: Colors.transparent,
      ),
      badgeContent: Container(
        height: height,
        width: height,
        decoration: BoxDecoration(
          gradient: this.gradient,
          shape: BoxShape.circle,
        ),
      ),
      child: this.child,
    );
  }
}
