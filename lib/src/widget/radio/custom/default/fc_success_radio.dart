import 'package:flutter_component/src/extension/fc_extension.dart';
import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/widgets.dart';

class FCSuccessRadio<T> extends StatelessWidget {
  const FCSuccessRadio({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.isToggleable = false,
    this.isDisabled = false,
    this.disabledColor,
  });

  final T value;
  final T groupValue;
  final void Function(T) onChanged;
  final bool isToggleable;
  final bool isDisabled;
  final Color? disabledColor;

  @override
  Widget build(BuildContext context) {
    final FCConfig config = context.config;
    final IFCTheme theme = config.theme;

    return FCBasicRadio(
      value: this.value,
      groupValue: this.groupValue,
      onChanged: this.onChanged,
      unselectedColor: theme.grey,
      selectedColor: theme.success,
      isToggleable: this.isToggleable,
      isDisabled: this.isDisabled,
      disabledColor: this.disabledColor,
    );
  }
}