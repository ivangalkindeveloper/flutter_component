import 'package:flutter_component/src/extension/fc_extension.dart';
import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/widgets.dart';

class FCRedDarkDotBadgeContent extends StatelessWidget {
  const FCRedDarkDotBadgeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FCConfig config = context.config;
    final IFCTheme theme = config.theme;

    return FCBasicDotBadgeContent(
      color: theme.redDark,
    );
  }
}
