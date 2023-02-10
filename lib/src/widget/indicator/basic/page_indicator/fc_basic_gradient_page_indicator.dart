import 'package:flutter_component/src/extension/fc_extension.dart';
import 'package:flutter_component/flutter_component.dart';
import 'package:flutter/widgets.dart';

//TODO height, width

class FCBasicGradientPageIndicator extends StatelessWidget {
  const FCBasicGradientPageIndicator({
    super.key,
    required this.length,
    required this.currentIndex,
    required this.activeGradident,
    required this.inactiveGradident,
  });

  final int length;
  final int currentIndex;
  final Gradient activeGradident;
  final Gradient inactiveGradident;

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
                height: size.s16 / 2,
                width: this.currentIndex == index ? size.s16 : size.s16 / 2,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(size.s16),
                  gradient: this.currentIndex == index
                      ? this.activeGradident
                      : this.inactiveGradident,
                ),
                duration: size.durationPageIndicator,
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