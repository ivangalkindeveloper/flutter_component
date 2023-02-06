import 'package:flutter_component/src/extension/fc_extension.dart';
import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/widgets.dart';

class FCSecondaryLightGradientFastPageIndicator extends StatelessWidget {
  const FCSecondaryLightGradientFastPageIndicator({
    super.key,
    required this.length,
    required this.currentIndex,
  });

  final int length;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    final FCConfig config = context.config;
    final IFCTheme theme = config.theme;

    return FCBasicGradientFastPageIndicator(
      length: this.length,
      currentIndex: this.currentIndex,
      activeGradident: theme.secondaryLightGradient,
      inactiveGradident: theme.greyLightGradient,
    );
  }
}
