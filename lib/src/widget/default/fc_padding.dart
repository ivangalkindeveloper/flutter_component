import 'package:flutter_component/src/extension/fc_extension.dart';
import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/widgets.dart';

class FCPadding extends StatelessWidget {
  const FCPadding({
    super.key,
    this.padding,
    required this.child,
  });

  final EdgeInsets? padding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final FCConfig config = context.config;
    final IFCSize size = config.size;

    return Padding(
      key: key,
      padding: this.padding ?? size.paddingDefault,
      child: this.child,
    );
  }
}
