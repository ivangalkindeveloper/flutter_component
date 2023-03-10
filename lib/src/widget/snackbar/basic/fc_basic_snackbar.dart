import 'package:flutter_component/src/extension/fc_extension.dart';
import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/widgets.dart';

class FCBasicSnackbar extends StatelessWidget {
  const FCBasicSnackbar({
    super.key,
    required this.backgroundColor,
    this.borderRadius,
    this.borderWidth,
    this.borderColor,
    this.padding,
    this.mainAxisAlignment,
    this.prefix,
    required this.child,
    this.postfix,
    this.bottom,
  });

  final Color backgroundColor;
  final BorderRadius? borderRadius;
  final double? borderWidth;
  final Color? borderColor;
  final EdgeInsets? padding;
  final MainAxisAlignment? mainAxisAlignment;
  final Widget? prefix;
  final Widget child;
  final Widget? postfix;
  final Widget? bottom;

  @override
  Widget build(BuildContext context) {
    final FCConfig config = context.config;
    final IFCSize size = config.size;

    final BorderRadius borderRadius = this.borderRadius ?? config.borderRadiusSnackbar;
    final double borderWidth = this.borderWidth ?? config.borderWidthSnackbar;
    final EdgeInsets padding = this.padding ??
        EdgeInsets.symmetric(
          vertical: size.s16 / 2,
          horizontal: size.s16,
        );
    final MainAxisAlignment mainAxisAlignment =
        this.mainAxisAlignment ?? MainAxisAlignment.start;

    return FCAnimatedContainer(
      decoration: BoxDecoration(
        color: this.backgroundColor,
        borderRadius: borderRadius,
        border: this.borderColor != null
            ? Border.all(
                color: this.borderColor!,
                width: borderWidth,
              )
            : null,
      ),
      padding: padding,
      child: Row(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: mainAxisAlignment,
              children: [
                if (this.prefix != null) this.prefix!,
                if (this.prefix != null) SizedBox(width: size.s16),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    this.child,
                    if (this.bottom != null) this.bottom!,
                  ],
                ),
              ],
            ),
          ),
          if (this.postfix != null) SizedBox(width: size.s16),
          if (this.postfix != null) this.postfix!,
        ],
      ),
    );
  }
}
