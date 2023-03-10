import 'package:flutter_component/src/widget/common/fc_select_field_wrapper.dart';
import 'package:flutter_component/src/extension/fc_extension.dart';
import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart' show Colors;

class FCBasicSelectField extends StatefulWidget {
  const FCBasicSelectField({
    super.key,
    required this.backgroundColor,
    required this.splashColor,
    this.internalColor,
    this.height,
    this.borderRadius,
    this.borderWidth,
    //
    required this.title,
    this.titleStyle,
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

  final Color backgroundColor;
  final Color splashColor;
  final Color? internalColor;
  final double? height;
  final BorderRadius? borderRadius;
  final double? borderWidth;
  //
  final String? title;
  final TextStyle? titleStyle;
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
  State<FCBasicSelectField> createState() => _FCBasicSelectFieldState();
}

class _FCBasicSelectFieldState extends State<FCBasicSelectField> {
  // Controller
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    this._controller = TextEditingController(text: this.widget.title);
  }

  @override
  void didUpdateWidget(FCBasicSelectField oldWidget) {
    super.didUpdateWidget(oldWidget);
    Future.microtask(() {
      if (this.mounted && this.widget.title != oldWidget.title) {
        setState(() {
          if (this.widget.title == null) {
            this._controller.clear();
          } else {
            this._controller.text = this.widget.title!;
          }
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    // Controller
    this._controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final FCConfig config = context.config;

    return FCSelectFieldWrapper(
      context: context,
      splashColor: this.widget.splashColor,
      borderRadius: config.borderRadiusField,
      onPressed: this.widget.onPressed,
      child: FCBasicFormField(
        context: context,
        height: this.widget.height,
        backgroundColor: this.widget.backgroundColor,
        focusedColor: Colors.transparent,
        internalColor: this.widget.internalColor,
        borderRadius: this.widget.borderRadius,
        borderWidth: this.widget.borderWidth,
        controller: this._controller,
        //
        textStyle: this.widget.titleStyle,
        //
        labelText: this.widget.labelText,
        labelColor: this.widget.labelColor,
        labelStyle: this.widget.labelStyle,
        //
        prefixText: this.widget.prefixText,
        prefixStyle: this.widget.prefixStyle,
        //
        hintText: this.widget.hintText,
        hintStyle: this.widget.hintStyle,
        //
        maxLines: this.widget.maxLines,
        maxLength: this.widget.maxLength,
        validator: this.widget.validator,
        prefix: this.widget.prefix,
        postfix: this.widget.postfix,
        bottom: this.widget.bottom,
        isRequired: this.widget.isRequired,
        isDisabled: this.widget.isDisabled,
        disabledColor: this.widget.disabledColor,
      ),
      isDisabled: this.widget.isDisabled,
    );
  }
}
