import 'package:flutter_component/src/extension/fc_extension.dart';
import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/widgets.dart';

class FCBasicCard extends StatelessWidget {
  const FCBasicCard({
    super.key,
    required this.backgroundColor,
    this.constraints,
    this.borderRadius,
    this.borderColor,
    this.borderWidth,
    this.padding,
    required this.child,
  });

  final Color backgroundColor;
  final BoxConstraints? constraints;
  final BorderRadius? borderRadius;
  final Color? borderColor;
  final double? borderWidth;
  final EdgeInsets? padding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final FCConfig config = context.config;
    final IFCSize size = config.size;

    return FCAnimatedContainer(
      padding: this.padding ?? size.paddingCard,
      constraints: this.constraints,
      decoration: BoxDecoration(
        color: this.backgroundColor,
        borderRadius: this.borderRadius ?? config.borderRadiusCard,
        border: this.borderColor != null
            ? Border.all(
                color: this.borderColor!,
                width: this.borderWidth ?? config.borderWidthCard,
              )
            : null,
      ),
      child: this.child,
    );
  }
}
