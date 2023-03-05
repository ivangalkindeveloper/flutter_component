import 'package:flutter_component/src/extension/fc_extension.dart';
import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/widgets.dart';

class FCPrimaryGradientSelectField extends StatelessWidget {
  const FCPrimaryGradientSelectField({
    super.key,
    this.height,
    this.internalGradient,
    required this.title,
    //
    this.textStyle,
    //
    required this.labelText,
    this.labelColor,
    this.labelStyle,
    //
    this.prefixText,
    this.prefixStyle,
    //
    this.hintText,
    this.hintStyle,
    //
    this.maxLines = 1,
    this.maxLength = 128,
    this.validator,
    this.prefix,
    this.postfix,
    this.bottom,
    required this.onPressed,
    this.isRequired = false,
    this.isDisabled = false,
    this.disabledColor,
  });

  final double? height;
  final Gradient? internalGradient;
  final String? title;
  //
  final TextStyle? textStyle;
  //
  final String labelText;
  final Color? labelColor;
  final TextStyle? labelStyle;
  //
  final String? prefixText;
  final TextStyle? prefixStyle;
  //
  final String? hintText;
  final TextStyle? hintStyle;
  //
  final int maxLines;
  final int maxLength;
  final String? Function(String)? validator;
  final Widget? prefix;
  final Widget? postfix;
  final Widget? bottom;
  final VoidCallback onPressed;
  final bool isRequired;
  final bool isDisabled;
  final Color? disabledColor;

  @override
  Widget build(BuildContext context) {
    final FCConfig config = context.config;
    final IFCTheme theme = config.theme;

    return FCBasicGradientSelectField(
      height: this.height,
      backgroundGradient: FCLinearGradient(
        context: context,
        colors: [
          theme.backgroundComponent,
          theme.backgroundComponent,
        ],
      ),
      splashColor: theme.primary,
      internalGradient: this.internalGradient,
      title: this.title,
      //
      textStyle: this.textStyle,
      //
      labelText: this.labelText,
      labelColor: this.labelColor,
      labelStyle: this.labelStyle,
      //
      prefixText: this.prefixText,
      prefixStyle: this.prefixStyle,
      //
      hintText: this.hintText,
      hintStyle: this.hintStyle,
      //
      maxLines: this.maxLines,
      maxLength: this.maxLength,
      validator: this.validator,
      prefix: this.prefix,
      postfix: this.postfix,
      bottom: this.bottom,
      onPressed: this.onPressed,
      isRequired: this.isRequired,
      isDisabled: this.isDisabled,
      disabledColor: this.disabledColor,
    );
  }
}
