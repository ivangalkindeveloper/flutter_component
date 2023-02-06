import 'package:flutter_component/src/extension/fc_extension.dart';
import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/material.dart';

class FCGreenLightGradientSegmentControl<T> extends StatelessWidget {
  const FCGreenLightGradientSegmentControl({
    super.key,
    required this.value,
    required this.items,
    required this.onChanged,
    this.iconHeight,
    this.style,
    this.isDisabled = false,
    this.disabledColor,
  });

  final T? value;
  final List<FCSegmentControlItem<T>> items;
  final void Function(T) onChanged;
  final double? iconHeight;
  final TextStyle? style;
  final bool isDisabled;
  final Color? disabledColor;

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
      unselectedBorderGradient: theme.greenLightGradient,
      unselectedInternalColor: theme.greenLight,
      unselectedSplashColor: theme.greenLight,
      selectedBackgroundGradient: theme.greenLightGradient,
      selectedBorderGradient: theme.greenLightGradient,
      selectedInternalColor: theme.white,
      selectedSplashColor: theme.white,
      iconHeight: this.iconHeight,
      style: this.style,
      isDisabled: this.isDisabled,
      disabledColor: this.disabledColor,
    );
  }
}
