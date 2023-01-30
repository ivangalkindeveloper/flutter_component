import 'package:flutter_component/src/extension/fc_extension.dart';
import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FCPlatformAppBar extends StatelessWidget implements ObstructingPreferredSizeWidget {
  const FCPlatformAppBar({
    Key? key,
    required this.context,
    required this.cupertino,
    required this.material,
    this.bottom,
  }) : super(key: key);

  final BuildContext context;
  final Widget cupertino;
  final Widget material;
  final PreferredSizeWidget? bottom;

  @override
  bool shouldFullyObstruct(BuildContext context) => false;

  @override
  Size get preferredSize {
    final FCConfig config = context.config;
    final TargetPlatform platform = config.platform;
    final IFCSize size = config.size;

    final double additionalPrefferedHeight =
        this.bottom != null ? (this.bottom!.preferredSize.height + size.s16 / 2) : 0;
    final Size cupertino =
        Size.fromHeight(kMinInteractiveDimensionCupertino + additionalPrefferedHeight);
    final Size material = Size.fromHeight(kToolbarHeight + additionalPrefferedHeight);

    switch (platform) {
      case TargetPlatform.iOS:
        return cupertino;
      case TargetPlatform.android:
        return material;
      default:
        return material;
    }
  }

  @override
  Widget build(BuildContext context) {
    final FCConfig config = context.config;
    final TargetPlatform platform = config.platform;

    switch (platform) {
      case TargetPlatform.iOS:
        return this.cupertino;
      case TargetPlatform.android:
        return this.material;
      default:
        return this.material;
    }
  }
}
