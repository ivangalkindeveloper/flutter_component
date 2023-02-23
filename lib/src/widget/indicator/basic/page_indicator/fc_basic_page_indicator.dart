import 'package:flutter_component/src/extension/fc_extension.dart';
import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/widgets.dart';

class FCBasicPageIndicator extends StatelessWidget {
  const FCBasicPageIndicator({
    super.key,
    required this.length,
    required this.index,
    required this.unselectedColor,
    required this.selectedColor,
    this.height,
    this.unselectedWidth,
    this.selectedWidth,
    this.duration,
  });

  final int length;
  final int index;
  final Color unselectedColor;
  final Color selectedColor;
  final double? height;
  final double? unselectedWidth;
  final double? selectedWidth;
  final Duration? duration;

  @override
  Widget build(BuildContext context) {
    final FCConfig config = context.config;
    final IFCSize size = config.size;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (int index = 0; index < this.length; index++)
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              AnimatedContainer(
                height: this.height ?? size.s16 / 2,
                width: this.index == index
                    ? (this.selectedWidth ?? size.s16)
                    : (this.unselectedWidth ?? size.s16 / 2),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(size.s16),
                  color: this.index == index ? this.selectedColor : this.unselectedColor,
                ),
                duration: this.duration ?? size.durationPageIndicator,
                curve: Curves.easeInOut,
                child: const SizedBox(),
              ),
              if (index != (this.length - 1)) SizedBox(width: size.s16 / 2),
            ],
          ),
      ],
    );
  }
}
