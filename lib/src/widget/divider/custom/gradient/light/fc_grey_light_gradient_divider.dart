import 'package:flutter_component/src/extension/fc_extension.dart';
import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/widgets.dart';

class FCGreyLightGradientDivider extends StatelessWidget {
  const FCGreyLightGradientDivider({
    Key? key,
    this.height,
  }) : super(key: key);

  final double? height;

  @override
  Widget build(BuildContext context) {
    final FCConfig config = context.config;
    final IFCTheme theme = config.theme;

    return FCBasicGradientDivider(
      gradient: theme.greyLightGradient,
      height: this.height,
    );
  }
}
