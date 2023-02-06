import 'package:flutter_component/src/extension/fc_extension.dart';
import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/widgets.dart';

class FCBlueFastPageIndicator extends StatelessWidget {
  const FCBlueFastPageIndicator({
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

    return FCBasicFastPageIndicator(
      length: this.length,
      currentIndex: this.currentIndex,
      activeColor: theme.blue,
      inactiveColor: theme.grey,
    );
  }
}
