import 'package:flutter_component/src/extension/fc_extension.dart';
import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';

class FCSecondaryDarkGradientCodeField extends StatelessWidget {
  const FCSecondaryDarkGradientCodeField({
    super.key,
    required this.length,
    this.controller,
    this.errorController,
    this.focusNode,
    this.itemHeight,
    this.itemWidth,
    this.itemStyle,
    this.borderRadius,
    this.borderWidth,
    this.horizontalInterval,
    this.onChanged,
    this.onCompleted,
    this.isAutofocus = false,
    this.isShowCursor = false,
    this.isDisabled = false,
    this.disabledColor,
  });

  final int length;
  final TextEditingController? controller;
  final StreamController<bool?>? errorController;
  final FocusNode? focusNode;
  final double? itemHeight;
  final double? itemWidth;
  final TextStyle? itemStyle;
  final BorderRadius? borderRadius;
  final double? borderWidth;
  final double? horizontalInterval;
  final void Function(String)? onChanged;
  final void Function(String)? onCompleted;
  final bool isAutofocus;
  final bool isShowCursor;
  final bool isDisabled;
  final Color? disabledColor;

  @override
  Widget build(BuildContext context) {
    final FCConfig config = context.config;
    final IFCTheme theme = config.theme;

    return FCBasicGradientCodeField(
      context: context,
      length: length,
      controller: this.controller,
      errorController: this.errorController,
      focusNode: this.focusNode,
      unfocusedBackgroundGradient: FCLinearGradient(
        context: context,
        colors: [
          theme.backgroundComponent,
          theme.backgroundComponent,
        ],
      ),
      focusedBackgroundGradient: FCLinearGradient(
        context: context,
        colors: [
          theme.backgroundComponent,
          theme.backgroundComponent,
        ],
      ),
      focusedBorderColor: theme.secondaryDark,
      itemHeight: this.itemHeight,
      itemWidth: this.itemWidth,
      itemStyle: this.itemStyle,
      borderRadius: this.borderRadius,
      borderWidth: this.borderWidth,
      horizontalInterval: this.horizontalInterval,
      onChanged: this.onChanged,
      onCompleted: this.onCompleted,
      isAutofocus: this.isAutofocus,
      isShowCursor: this.isShowCursor,
      isDisabled: this.isDisabled,
      disabledColor: this.disabledColor,
    );
  }
}
