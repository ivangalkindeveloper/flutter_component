import 'package:flutter_component/src/extension/fc_extension.dart';
import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FCBasicIconButton extends FCPlatformWidget {
  FCBasicIconButton({
    Key? key,
    required Color splashColor,
    required Widget icon,
    required VoidCallback onPressed,
    Widget? badgeContent,
    bool isDisabled = false,
    Color? disabledColor,
  }) : super(
          key: key,
          cupertino: _FCBasicIconButtonCupertino(
            key: key,
            icon: icon,
            onPressed: onPressed,
            badgeContent: badgeContent,
            isDisabled: isDisabled,
            disabledColor: disabledColor,
          ),
          material: _FCBasicIconButtonMaterial(
            key: key,
            splashColor: splashColor,
            icon: icon,
            onPressed: onPressed,
            badgeContent: badgeContent,
            isDisabled: isDisabled,
            disabledColor: disabledColor,
          ),
        );
}

class _FCBasicIconButtonCupertino extends StatelessWidget {
  const _FCBasicIconButtonCupertino({
    Key? key,
    required this.icon,
    required this.onPressed,
    required this.badgeContent,
    required this.isDisabled,
    required this.disabledColor,
  }) : super(key: key);

  final Widget icon;
  final VoidCallback onPressed;
  final Widget? badgeContent;
  final bool isDisabled;
  final Color? disabledColor;

  @override
  Widget build(BuildContext context) {
    final FCConfig config = context.config;
    final IFCSize size = config.size;

    return SizedBox(
      height: size.iconHeightDefault,
      width: size.iconHeightDefault,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CupertinoButton(
            minSize: size.iconHeightLarge,
            onPressed: this.isDisabled ? () {} : this.onPressed,
            padding: const EdgeInsets.all(0),
            child: FCBasicBadge(
              content: this.badgeContent,
              child: this.icon,
            ),
          ),
          Positioned.fill(
            child: FCAnimatedSwitcher(
              child: this.isDisabled
                  ? FCComponentDisabledOverlay(
                      color: this.disabledColor,
                    )
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}

class _FCBasicIconButtonMaterial extends StatelessWidget {
  const _FCBasicIconButtonMaterial({
    Key? key,
    required this.splashColor,
    required this.icon,
    required this.onPressed,
    required this.badgeContent,
    required this.isDisabled,
    required this.disabledColor,
  }) : super(key: key);

  final Color splashColor;
  final Widget icon;
  final VoidCallback onPressed;
  final Widget? badgeContent;
  final bool isDisabled;
  final Color? disabledColor;

  @override
  Widget build(BuildContext context) {
    final FCConfig config = context.config;
    final IFCSize size = config.size;

    return SizedBox(
      height: size.iconHeightDefault,
      width: size.iconHeightDefault,
      child: Stack(
        alignment: Alignment.center,
        children: [
          IconButton(
            splashColor: this.splashColor,
            iconSize: size.iconHeightLarge,
            onPressed: this.isDisabled ? () {} : this.onPressed,
            padding: const EdgeInsets.all(0),
            icon: FCBasicBadge(
              content: this.badgeContent,
              child: this.icon,
            ),
          ),
          Positioned.fill(
            child: FCAnimatedSwitcher(
              child: this.isDisabled
                  ? FCComponentDisabledOverlay(
                      color: this.disabledColor,
                    )
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
