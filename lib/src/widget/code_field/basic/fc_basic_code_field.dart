import 'package:flutter_component/src/extension/fc_extension.dart';
import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/widgets.dart';
import 'package:pinput/pinput.dart';
import 'dart:async';

import 'package:flutter/material.dart' show Material, Colors;

class FCBasicCodeField extends StatefulWidget {
  const FCBasicCodeField({
    super.key,
    required this.context,
    required this.length,
    this.controller,
    this.errorController,
    this.focusNode,
    required this.unfocusedBackgroundColor,
    required this.focusedBackgroundColor,
    required this.focusedBorderColor,
    this.itemHeight,
    this.itemWidth,
    this.itemStyle,
    this.borderRadius,
    this.borderWidth,
    this.horizontalInterval,
    this.onChanged,
    this.onCompleted,
    this.isAutofocus = false,
    this.isShowCursor = false,
    this.isDisabled = false,
    this.disabledColor,
  });

  final BuildContext context;
  final int length;
  final TextEditingController? controller;
  final StreamController<bool?>? errorController;
  final FocusNode? focusNode;
  final Color unfocusedBackgroundColor;
  final Color focusedBackgroundColor;
  final Color focusedBorderColor;
  final double? itemHeight;
  final double? itemWidth;
  final TextStyle? itemStyle;
  final BorderRadius? borderRadius;
  final double? borderWidth;
  final double? horizontalInterval;
  final void Function(String)? onChanged;
  final void Function(String)? onCompleted;
  final bool isAutofocus;
  final bool isShowCursor;
  final bool isDisabled;
  final Color? disabledColor;

  @override
  State<FCBasicCodeField> createState() => _FCBasicCodeFieldState();
}

class _FCBasicCodeFieldState extends State<FCBasicCodeField>
    with TickerProviderStateMixin {
  late final FCConfig _config;
  late final IFCTextStyle _textStyle;
  late final IFCHaptic _haptic;
  late final IFCTheme _theme;
  late final IFCSize _size;

  late final AnimationController _animationController;
  late final StreamSubscription? _errorSubscription;
  bool _isError = false;

  @override
  void initState() {
    super.initState();
    this._config = this.widget.context.config;
    this._textStyle = this._config.textStyle;
    this._haptic = this._config.haptic;
    this._theme = this._config.theme;
    this._size = this._config.size;

    this._animationController = AnimationController(
      vsync: this,
      duration: this._size.durationAnimationSlow,
    );
    this._animationController.addStatusListener(this._controllerListener);
    this._errorSubscription = this.widget.errorController?.stream.listen((bool? isError) {
      if (this.mounted == false) return;

      if (isError == null) {
        setState(() => this._isError = false);
        return;
      }

      setState(() => this._isError = true);
      this._animationController.forward();
      Future.delayed(this._size.durationAnimationDefault, () {
        this._haptic.error();
        this.widget.errorController?.add(null);
        this.widget.controller?.clear();
      });
    });
  }

  @override
  void dispose() {
    this._animationController.removeStatusListener(this._controllerListener);
    this._animationController.dispose();
    this._errorSubscription?.cancel();
    super.dispose();
  }

  void _controllerListener(AnimationStatus status) {
    if (status == AnimationStatus.completed) this._animationController.reverse();
  }

  PinTheme _item({
    required Color backgroundColor,
    required double height,
    required double width,
    required BorderRadius borderRadius,
    required double borderWidth,
    required TextStyle itemStyle,
    required Color? borderColor,
  }) =>
      PinTheme(
        height: height,
        width: width,
        textStyle: itemStyle,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: borderRadius,
          border: borderColor != null
              ? Border.all(
                  color: borderColor,
                  width: borderWidth,
                )
              : null,
        ),
      );

  @override
  Widget build(BuildContext context) {
    final FCConfig config = context.config;
    final IFCTextStyle textStyle = config.textStyle;

    final double itemHeight = this.widget.itemHeight ?? this._size.heightCodeField;
    final double itemWidth = this.widget.itemWidth ?? (this._size.heightCodeField * 0.75);
    final BorderRadius borderRadius =
        this.widget.borderRadius ?? config.borderRadiusButton;
    final double borderWidth = this.widget.borderWidth ?? this._config.borderWidthField;
    final TextStyle itemStyle = this.widget.itemStyle?.copyWith(
              color: this.widget.itemStyle?.color ?? this._theme.black,
              fontSize: this.widget.itemStyle?.fontSize ?? this._size.s20,
              fontWeight:
                  this.widget.itemStyle?.fontWeight ?? this._textStyle.fontWeightMedium,
              fontFamily:
                  this.widget.itemStyle?.fontFamily ?? this._textStyle.fontFamilyMedium,
              package: textStyle.package,
            ) ??
        TextStyle(
          color: this._theme.black,
          fontSize: this._size.s20,
          fontWeight: this._textStyle.fontWeightMedium,
          fontFamily: this._textStyle.fontFamilyMedium,
          package: textStyle.package,
        );
    final double horizontalInterval =
        (this.widget.itemHeight ?? this._size.heightCodeField) - this._size.s14;
    final double cursorHeight =
        (this.widget.itemWidth ?? this._size.heightCodeField) - this._size.s14;
    final void Function(String)? onChanged =
        this.widget.isDisabled ? null : this.widget.onChanged;
    final void Function(String)? onCompleted =
        this.widget.isDisabled ? null : this.widget.onCompleted;

    return Stack(
      children: [
        SlideTransition(
          position: Tween<Offset>(
            begin: Offset.zero,
            end: const Offset(0.1, 0.0),
          ).animate(
            CurvedAnimation(
              parent: this._animationController,
              curve: Curves.elasticIn,
            ),
          ),
          child: Material(
            color: Colors.transparent,
            child: Pinput(
              length: this.widget.length,
              controller: this.widget.controller,
              focusNode: this.widget.focusNode,
              pinAnimationType: PinAnimationType.fade,
              animationDuration: this._size.durationAnimationFast,
              animationCurve: Curves.easeInOut,
              defaultPinTheme: this._item(
                backgroundColor: this.widget.unfocusedBackgroundColor,
                height: itemHeight,
                width: itemWidth,
                borderRadius: borderRadius,
                borderWidth: borderWidth,
                itemStyle: itemStyle,
                borderColor: null,
              ),
              focusedPinTheme: this._item(
                backgroundColor: this.widget.focusedBackgroundColor,
                height: itemHeight,
                width: itemWidth,
                borderRadius: borderRadius,
                borderWidth: borderWidth,
                itemStyle: itemStyle,
                borderColor: this.widget.focusedBorderColor,
              ),
              submittedPinTheme: this._item(
                backgroundColor: this.widget.unfocusedBackgroundColor,
                height: itemHeight,
                width: itemWidth,
                borderRadius: borderRadius,
                borderWidth: borderWidth,
                itemStyle: itemStyle,
                borderColor: null,
              ),
              errorPinTheme: this._item(
                backgroundColor: this._theme.dangerLight,
                height: itemHeight,
                width: itemWidth,
                borderRadius: borderRadius,
                borderWidth: borderWidth,
                itemStyle: TextStyle(
                  color: this._theme.danger,
                  package: textStyle.package,
                ),
                borderColor: null,
              ),
              forceErrorState: this._isError,
              separator: SizedBox(width: horizontalInterval),
              autofocus: this.widget.isAutofocus,
              showCursor: this.widget.isShowCursor,
              cursor: Container(
                color: this.widget.focusedBorderColor,
                height: cursorHeight,
                width: this._size.s10 / 10,
              ),
              onChanged: onChanged,
              onCompleted: onCompleted,
              readOnly: this.widget.isDisabled,
              errorText: null,
              errorTextStyle: null,
            ),
          ),
        ),
        Positioned.fill(
          child: FCAnimatedSwitcher(
            child: this.widget.isDisabled
                ? FCComponentDisabledOverlay(
                    color: this.widget.disabledColor,
                    borderRadius: borderRadius,
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
