import 'package:flutter_component/src/extension/fc_extension.dart';
import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/material.dart';

class FCGreyLightGradientSegmentControl<T> extends StatelessWidget {
  const FCGreyLightGradientSegmentControl({
    Key? key,
    required this.value,
    required this.items,
    required this.onChanged,
    this.iconHeight,
    this.style,
  }) : super(key: key);

  final T? value;
  final List<FCSegmentControlItem<T>> items;
  final void Function(T) onChanged;
  final double? iconHeight;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final FCConfig config = context.config;
    final IFCTheme theme = config.theme;

    return FCBasicGradientSegmentControl(
      value: this.value,
      items: this.items,
      onChanged: this.onChanged,
      unselectedBackgroundGradient: LinearGradient(
        colors: [
          Colors.transparent,
          Colors.transparent,
        ],
      ),
      unselectedBorderGradient: theme.greyLightGradient,
      unselectedInternalColor: theme.greyLight,
      unselectedSplashColor: theme.greyLight,
      selectedBackgroundGradient: theme.greyLightGradient,
      selectedBorderGradient: theme.greyLightGradient,
      selectedInternalColor: theme.white,
      selectedSplashColor: theme.white,
      iconHeight: this.iconHeight,
      style: this.style,
    );
  }
}
