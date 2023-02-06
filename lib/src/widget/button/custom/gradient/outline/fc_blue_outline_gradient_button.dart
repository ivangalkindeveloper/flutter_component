import 'package:flutter_component/src/extension/fc_extension.dart';
import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/widgets.dart';

class FCBlueOutlineGradientButton extends StatelessWidget {
  const FCBlueOutlineGradientButton({
    super.key,
    this.prefix,
    this.prefixIcon,
    required this.title,
    this.postfixIcon,
    this.postfix,
    required this.onPressed,
    this.isFilled = false,
    this.isLoading = false,
    this.isDisabled = false,
    this.disabledColor,
  });

  final Widget? prefix;
  final IconData? prefixIcon;
  final String title;
  final IconData? postfixIcon;
  final Widget? postfix;
  final VoidCallback onPressed;
  final bool isFilled;
  final bool isLoading;
  final bool isDisabled;
  final Color? disabledColor;

  @override
  Widget build(BuildContext context) {
    final FCConfig config = context.config;
    final IFCTheme theme = config.theme;
    final IFCSize size = config.size;

    return FCBasicGradientButton(
      backgroundGradient: this.isFilled ? theme.blueLightGradient : null,
      borderGradient: theme.blueGradient,
      splashColor: theme.blue,
      child: FCAnimatedOpacityStack(
        condition: this.isLoading,
        firstChild: FCCircularIndicator.blue(context: context),
        secondChild: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (this.prefix != null) this.prefix!,
            if (this.prefix != null) SizedBox(width: size.s16),
            if (this.prefixIcon != null)
              FCIcon.blueGradient(
                context: context,
                icon: this.prefixIcon!,
              ),
            if (this.prefixIcon != null) SizedBox(width: size.s16),
            FCText.medium16BlueGradient(
              context: context,
              text: this.title,
            ),
            if (this.postfixIcon != null) SizedBox(width: size.s16),
            if (this.postfixIcon != null)
              FCIcon.blueGradient(
                context: context,
                icon: this.postfixIcon!,
              ),
            if (this.postfix != null) SizedBox(width: size.s16),
            if (this.postfix != null) this.postfix!,
          ],
        ),
      ),
      onPressed: this.isLoading ? () {} : this.onPressed,
      isDisabled: this.isDisabled,
      disabledColor: this.disabledColor,
    );
  }
}
