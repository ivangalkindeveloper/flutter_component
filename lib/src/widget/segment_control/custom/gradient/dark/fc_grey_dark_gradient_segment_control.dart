import 'package:flutter_component/src/extension/fc_extension.dart';
import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/material.dart';

class FCGreyDarkGradientSegmentControl<T> extends StatelessWidget {
  const FCGreyDarkGradientSegmentControl({
    super.key,
    required this.value,
    required this.items,
    required this.onChanged,
    this.unselectedStyle,
    this.selectedStyle,
    this.height,
    this.borderRadius,
    this.borderWidth,
    this.isDisabled = false,
    this.disabledColor,
  });

  final T? value;
  final List<FCSegmentControlItem<T>> items;
  final void Function(T) onChanged;
  final TextStyle? unselectedStyle;
  final TextStyle? selectedStyle;
  final double? height;
  final BorderRadius? borderRadius;
  final double? borderWidth;
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
      unselectedBackgroundGradient: const LinearGradient(
        colors: [
          Colors.transparent,
          Colors.transparent,
        ],
      ),
      unselectedBorderGradient: theme.greyDarkGradient,
      unselectedInternalGradient: theme.greyDarkGradient,
      unselectedSplashColor: theme.greyDark,
      unselectedStyle: this.unselectedStyle,
      selectedBackgroundGradient: theme.greyDarkGradient,
      selectedBorderGradient: theme.greyDarkGradient,
      selectedInternalGradient: LinearGradient(
        colors: [
          theme.white,
          theme.white,
        ],
      ),
      selectedSplashColor: theme.white,
      selectedStyle: this.selectedStyle,
      height: this.height,
      borderRadius: this.borderRadius,
      borderWidth: this.borderWidth,
      isDisabled: this.isDisabled,
      disabledColor: this.disabledColor,
    );
  }
}
