import 'package:flutter_component/src/extension/fc_extension.dart';
import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';

class FCGreenLightGradientCodeField extends StatelessWidget {
  const FCGreenLightGradientCodeField({
    Key? key,
    required this.length,
    this.itemHeight,
    this.itemWidth,
    this.style,
    this.controller,
    this.errorController,
    this.focusNode,
    this.horizontalInterval,
    this.isAutofocus = false,
    this.isShowCursor = false,
    this.onChanged,
    this.onCompleted,
    this.isDisabled = false,
    this.disabledColor,
  }) : super(key: key);

  final int length;
  final double? itemHeight;
  final double? itemWidth;
  final TextStyle? style;
  final TextEditingController? controller;
  final StreamController<bool?>? errorController;
  final FocusNode? focusNode;
  final double? horizontalInterval;
  final bool isAutofocus;
  final bool isShowCursor;
  final void Function(String?)? onChanged;
  final void Function(String?)? onCompleted;
  final bool isDisabled;
  final Color? disabledColor;

  @override
  Widget build(BuildContext context) {
    final FCConfig config = context.config;
    final IFCTheme theme = config.theme;

    return FCBasicGradientCodeField(
      context: context,
      length: length,
      unfocusedBackgroundGradient: FCGradient(
        colors: [
          theme.backgroundComponent,
          theme.backgroundComponent,
        ],
      ),
      focusedBackgroundGradient: FCGradient(
        colors: [
          theme.backgroundComponent,
          theme.backgroundComponent,
        ],
      ),
      focusedBorderColor: theme.greenLight,
      itemHeight: this.itemHeight,
      itemWidth: this.itemWidth,
      style: this.style,
      controller: this.controller,
      errorController: this.errorController,
      focusNode: this.focusNode,
      horizontalInterval: this.horizontalInterval,
      isAutofocus: this.isAutofocus,
      isShowCursor: this.isShowCursor,
      onChanged: this.onChanged,
      onCompleted: this.onCompleted,
      isDisabled: this.isDisabled,
      disabledColor: this.disabledColor,
    );
  }
}
