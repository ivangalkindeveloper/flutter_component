import 'package:flutter_component/src/extension/fc_extension.dart';
import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/widgets.dart';

class FCPrimaryLightGradientDivider extends StatelessWidget {
  const FCPrimaryLightGradientDivider({
    Key? key,
    this.height,
  }) : super(key: key);

  final double? height;

  @override
  Widget build(BuildContext context) {
    final FCConfig config = context.config;
    final IFCTheme theme = config.theme;

    return FCBasicGradientDivider(
      gradient: theme.primaryLightGradient,
      height: this.height,
    );
  }
}
