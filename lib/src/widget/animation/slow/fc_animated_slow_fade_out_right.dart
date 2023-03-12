import 'package:flutter_component/src/extension/fc_extension.dart';
import 'package:animate_do/animate_do.dart' show FadeOutRight;
import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/widgets.dart';

class FCAnimatedSlowFadeOutRight extends StatelessWidget {
  const FCAnimatedSlowFadeOutRight({
    super.key,
    required this.child,
    this.onCreated,
    this.isAnimate = true,
    this.from,
  });

  final Widget child;
  final dynamic Function(AnimationController)? onCreated;
  final bool isAnimate;
  final double? from;

  @override
  Widget build(BuildContext context) {
    final FCConfig config = context.config;
    final IFCSize size = config.size;

    return FadeOutRight(
      child: child,
      duration: size.durationAnimationSlow,
      controller: this.onCreated,
      animate: this.isAnimate,
      from: this.from ?? size.s16 * 4,
    );
  }
}
