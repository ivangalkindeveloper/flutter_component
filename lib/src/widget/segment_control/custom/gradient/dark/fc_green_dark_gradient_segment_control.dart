import 'package:flutter_component/src/extension/fc_extension.dart';
import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/material.dart';

class FCGreenDarkGradientSegmentControl<T> extends StatelessWidget {
  const FCGreenDarkGradientSegmentControl({
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
      unselectedBorderGradient: theme.greenDarkGradient,
      unselectedInternalColor: theme.greenDark,
      unselectedSplashColor: theme.greenDark,
      selectedBackgroundGradient: theme.greenDarkGradient,
      selectedBorderGradient: theme.greenDarkGradient,
      selectedInternalColor: theme.white,
      selectedSplashColor: theme.white,
      iconHeight: this.iconHeight,
      style: this.style,
    );
  }
}
