import 'package:flutter_component/src/extension/fc_extension.dart';
import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/widgets.dart';

class FCBlueCounterBadgeContent extends StatelessWidget {
  const FCBlueCounterBadgeContent({
    Key? key,
    required this.count,
  }) : super(key: key);

  final int? count;

  @override
  Widget build(BuildContext context) {
    final FCConfig config = context.config;
    final IFCTheme theme = config.theme;

    return FCBasicCounterBadgeContent(
      color: theme.blue,
      count: this.count,
    );
  }
}
