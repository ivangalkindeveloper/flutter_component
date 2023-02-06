import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';

class FCExpandedModalBlurAppBar extends FCBasicBlurAppBar {
  FCExpandedModalBlurAppBar({
    super.key,
    required BuildContext context,
    bool transitionBetweenRoutes = false,
    Color? blurColor,
    double? blurOpacity,
    ImageFilter? blurFilter,
    Widget? prefix,
    String? cupertinoLocale,
    VoidCallback? onPressedBack,
    String? title,
    TextStyle? style,
    Widget? middle,
    Widget? postfix,
    EdgeInsets? bottomPadding,
    PreferredSizeWidget? bottom,
  }) : super(
          context: context,
          transitionBetweenRoutes: transitionBetweenRoutes,
          blurColor: blurColor,
          blurOpacity: blurOpacity,
          blurFilter: blurFilter,
          prefix: _prefix(
            prefix: prefix,
            cupertinoLocale: cupertinoLocale,
            onPressedBack: onPressedBack,
          ),
          title: title,
          style: style,
          middle: middle,
          postfix: postfix,
          bottomPadding: bottomPadding,
          bottom: bottom,
        );

  static Widget? _prefix({
    required Widget? prefix,
    required String? cupertinoLocale,
    required VoidCallback? onPressedBack,
  }) {
    if (prefix != null) return prefix;

    if (cupertinoLocale != null && onPressedBack != null)
      return FCExpandedModalCloseButton(
        cupertinoLocale: cupertinoLocale,
        onPressed: onPressedBack,
      );

    return null;
  }
}