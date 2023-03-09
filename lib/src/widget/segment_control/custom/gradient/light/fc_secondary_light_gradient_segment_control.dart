import 'package:flutter_component/src/extension/fc_extension.dart';
import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/material.dart';

class FCSecondaryLightGradientSegmentControl<T> extends StatelessWidget {
  const FCSecondaryLightGradientSegmentControl({
    super.key,
    required this.value,
    required this.items,
    required this.onChanged,
    this.unselectedStyle,
    this.selectedStyle,
    this.height,
    this.padding,
    this.borderRadius,
    this.borderWidth,
    this.isExpanded = false,
    this.isDisabled = false,
    this.disabledColor,
  });

  final T? value;
  final List<FCSegmentControlItem<T>> items;
  final void Function(T) onChanged;
  final TextStyle? unselectedStyle;
  final TextStyle? selectedStyle;
  final double? height;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;
  final double? borderWidth;
  final bool isExpanded;
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
      unselectedBorderGradient: theme.secondaryLightGradient,
      unselectedInternalGradient: theme.secondaryLightGradient,
      unselectedSplashColor: theme.secondaryLight,
      unselectedStyle: this.unselectedStyle,
      selectedBackgroundGradient: theme.secondaryLightGradient,
      selectedBorderGradient: theme.secondaryLightGradient,
      selectedInternalGradient: LinearGradient(
        colors: [
          theme.secondaryButton,
          theme.secondaryButton,
        ],
      ),
      selectedSplashColor: theme.secondaryButton,
      selectedStyle: this.selectedStyle,
      height: this.height,
      padding: this.padding,
      borderRadius: this.borderRadius,
      borderWidth: this.borderWidth,
      isExpanded: this.isExpanded,
      isDisabled: this.isDisabled,
      disabledColor: this.disabledColor,
    );
  }
}
