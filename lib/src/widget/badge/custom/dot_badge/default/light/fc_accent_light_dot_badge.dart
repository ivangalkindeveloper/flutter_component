import 'package:flutter_component/src/extension/fc_extension.dart';
import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/widgets.dart';

class FCAccentLightDotBadge extends StatelessWidget {
  const FCAccentLightDotBadge({
    super.key,
    this.isShow = true,
    this.position = FCBadgePosition.topEnd,
    this.duration,
    this.height,
    required this.child,
  });

  final bool isShow;
  final FCBadgePosition position;
  final Duration? duration;
  final double? height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final FCConfig config = context.config;
    final IFCTheme theme = config.theme;

    return FCBasicDotBadge(
      color: theme.accentLight,
      isShow: this.isShow,
      position: this.position,
      duration: this.duration,
      height: this.height,
      child: this.child,
    );
  }
}