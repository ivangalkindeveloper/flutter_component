import 'package:flutter_component/src/extension/fc_extension.dart';
import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/widgets.dart';

class FCPrimaryDarkSlidingSegmentControl<T> extends StatelessWidget {
  const FCPrimaryDarkSlidingSegmentControl({
    super.key,
    required this.value,
    required this.items,
    required this.onChanged,
    this.unselectedStyle,
    this.selectedStyle,
    this.height,
    this.isDisabled = false,
    this.disabledColor,
  });

  final T value;
  final List<FCSlidingSegmentControlItem<T>> items;
  final void Function(T) onChanged;
  final TextStyle? unselectedStyle;
  final TextStyle? selectedStyle;
  final double? height;
  final bool isDisabled;
  final Color? disabledColor;

  @override
  Widget build(BuildContext context) {
    final FCConfig config = context.config;
    final IFCTheme theme = config.theme;

    return FCBasicSlidingSegmentControl<T>(
      value: this.value,
      items: this.items,
      onChanged: this.onChanged,
      backgroundColor: theme.grey,
      thumbColor: theme.primaryDark,
      unselectedInternalColor: theme.black,
      unselectedStyle: this.unselectedStyle,
      selectedInternalColor: theme.primaryButton,
      selectedStyle: this.selectedStyle,
      height: this.height,
      isDisabled: this.isDisabled,
      disabledColor: this.disabledColor,
    );
  }
}
