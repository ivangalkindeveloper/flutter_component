import 'package:flutter_component/src/widget/common/fc_button_row_child.dart';
import 'package:flutter_component/src/extension/fc_extension.dart';
import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/widgets.dart';

class FCDangerGradientButton extends StatelessWidget {
  const FCDangerGradientButton({
    super.key,
    this.prefix,
    this.title,
    this.style,
    this.postfix,
    required this.onPressed,
    this.isExpanded = false,
    this.isLoading = false,
    this.isDisabled = false,
    this.disabledColor,
  });

  final Widget? prefix;
  final String? title;
  final TextStyle? style;
  final Widget? postfix;
  final VoidCallback onPressed;
  final bool isExpanded;
  final bool isLoading;
  final bool isDisabled;
  final Color? disabledColor;

  @override
  Widget build(BuildContext context) {
    final FCConfig config = context.config;
    final IFCTheme theme = config.theme;

    return FCBasicGradientButton(
      backgroundGradient: theme.dangerGradient,
      splashColor: theme.white,
      child: FCAnimatedOpacityStack(
        condition: this.isLoading,
        firstChild: FCCircularIndicator.whiteAlways(context: context),
        secondChild: FCButtonRowChild(
          mainAxisAlignment: MainAxisAlignment.center,
          gradient: null,
          prefix: this.prefix,
          title: this.title,
          textAlign: TextAlign.center,
          style: this.style?.copyWith(
                    color: this.style?.color ?? theme.whiteAlways,
                  ) ??
              TextStyle(
                color: theme.whiteAlways,
              ),
          postfix: this.postfix,
          isExpanded: this.isExpanded,
        ),
      ),
      onPressed: this.isLoading ? () {} : this.onPressed,
      isDisabled: this.isDisabled,
      disabledColor: this.disabledColor,
    );
  }
}
