import 'package:flutter_component/src/extension/fc_extension.dart';
import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/widgets.dart';

class FCYellowSlowPageIndicator extends StatelessWidget {
  const FCYellowSlowPageIndicator({
    Key? key,
    required this.length,
    required this.currentIndex,
  }) : super(key: key);

  final int length;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    final FCConfig config = context.config;
    final IFCTheme theme = config.theme;

    return FCBasicSlowPageIndicator(
      length: this.length,
      currentIndex: this.currentIndex,
      activeColor: theme.yellow,
      inactiveColor: theme.grey,
    );
  }
}
